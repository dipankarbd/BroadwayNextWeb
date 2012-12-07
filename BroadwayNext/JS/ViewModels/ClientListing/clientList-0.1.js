var bn = bn || {};


//#region "MODEL"
bn.Client = function (data) {
    //---
    //console.log('inside bn.Client');

    this.ClientID = data.ClientID;
    this.Clinum = ko.observable(data.Clinum);
    this.AcctPrefix = data.AcctPrefix;

    this.Company = ko.observable(data.Company);
    this.Address1 = ko.observable(data.Address1);
    this.Address2 = ko.observable(data.Address2);
    this.City = ko.observable(data.City);
    console.log('Client State => ' + data.State);
    this.State = ko.observable(data.State);
    //this.selectedState = ko.observable();

    this.Zip = ko.observable(data.Zip);
    this.FirstName = ko.observable(data.FirstName);
    this.LastName = ko.observable(data.LastName);
    this.Phone = ko.observable(data.Phone);
    this.PhoneExt = ko.observable(data.PhoneExt);
    this.Fax = ko.observable(data.Fax);
    this.Mobile = ko.observable(data.Mobile);
    this.TechnologyProvider = ko.observable(data.TechnologyProvider);

    this.ActiveType = ko.observable(data.ActiveType);
    this.Email = ko.observable(data.Email);
    this.Website = ko.observable(data.Website);
    this.DNE = ko.observable(data.DNE);
    this.Title = ko.observable(data.Title);


    this.InputDate = moment(data.Inputdate).toDate();
    this.InputDate.formatted = moment(data.Inputdate).format("MM/DD/YY");
    this.InputBy = data.Inputby ? data.Inputby : "";

    this.CreditHold = ko.observable(data.CreditHold);
    this.PaymentTermDays = ko.observable(data.PaymentTermDays);
    this.AerialPricing = ko.observable(data.AerialPricing);
    this.InvDays = ko.observable(data.InvDays);
    this.PrintInOutSignOff = ko.observable(data.PrintInOutSignOff);
    this.PrintLocID = ko.observable(data.PrintLocID);

    //Client Notification Emails
    this.ClientNotifications = ko.observableArray(data.ClientNotifications);

    //---
};

bn.ClientNotification = function (data) {
    self = this;
    this.NotificationID = data.NotificationID;
    this.ClientID = data.ClientID;
    //Division Stuff..
    this.DivisionID = ko.observable(data.DivisionID);
    this.DivisionIDText = function () {
        if (this.DivisionID() && bn.vmClientList.ddlDivisions().length) {
            var divID = this.DivisionID();
            //console.log("=== Self Inside => " + divID);
            //console.log('ddlDivision Items :' + bn.vmClientList.ddlDivisions().length);
            var _Division = ko.utils.arrayFirst(bn.vmClientList.ddlDivisions(), function (item) {
                console.log(" == item.DivisionID =>" + item.DivisionID + " === " + item.Code);
                return (divID === item.DivisionID);
            });
            if (_Division) {
                //console.log("Found Match => " + _Division.Code);
                return _Division.Code.toString();
            }
        }
    };
    //this.SelectedDivisionID = ko.observable();

    this.Email = ko.observable(data.Email);
    this.CalendarType = ko.observable(data.CalendarType);
    //this.SelectedCalendarType = ko.observable();
};


bn.vmClientList = (function ($, bn, undefined) {

    var
		self = this,

		clients = ko.observableArray([]),
		totalClients = ko.observable(),

		selectedClient = ko.observable(),
		editingClient = ko.observable(),

        //search criteria
        criteriaClient = ko.observable(),
        criteriaCompany = ko.observable(),
        criteriaStatus = ko.observable("all"),

        //Notification related
        clientNotifications = ko.observableArray([]),
        selectedClientNotification = ko.observable(),
        editingClientNotification = ko.observable(),


        //DropDown items
        ddlCalendarTypes = ko.observableArray(["Calendar Year", "Fiscal Year"]),
        ddlStates = ko.observableArray([]),
        ddlDivisions = ko.observableArray([]),
        ddlNoOfDays = ko.observableArray([]),
        ddlPaymentTerms = ko.observableArray([]),
        ddlTechProviders = ko.observableArray([]),

        //selectedDivision = ko.observable(),

		//flags
		isSelected = ko.observable(),
		inEditMode = ko.observable(),
        showNotificationEmail = ko.observable(true),
		modelIsValid = ko.observable(true),	 //This flag is set from the ValidateObservable utility method
        addingNewNotification = ko.observable(),
        inNotificationEditMode = ko.observable(),


        //methods
		selectClient = function (client) {
		    selectedClient(client);
		    isSelected(true);
		},

        selectClientNotification = function (item) {
            if (!addingNewNotification() && !inNotificationEditMode()) {
                selectedClientNotification(item);
            }
        },

		loadClients = function () {
		    var searchCriteria = {};
		    if (criteriaClient) searchCriteria.Client = criteriaClient();
		    if (criteriaCompany) searchCriteria.Company = criteriaCompany();
		    if (criteriaStatus) searchCriteria.Status = criteriaStatus();
		    console.log(searchCriteria);
		    $.getJSON("./ClientListing/GetClients", searchCriteria, function (result) {
		        totalClients(result.VirtualRowCount);

		        var mappedClients = ko.utils.arrayMap(result.Data, function (item) {
		            //take care of Client Notification
		            var clNotifications = [{}];
		            if (item.ClientNotifications.length) {
		                clNotifications = ko.utils.arrayMap(item.ClientNotifications, function (notification) {
		                    return new bn.ClientNotification(notification);
		                });
		            }
		            else {
		                //Add blank
		                clNotifications = [new bn.ClientNotification({})];
		                //Console.log("RemitTo length : " + RemitTo.length);
		            }
		            item.ClientNotifications = clNotifications;
		            return new bn.Client(item);
		        });
		        //setDocumentTabCounter(totalVendorDocuments());
		        clients([]);
		        return clients.push.apply(clients, mappedClients);
		    });

		},

		addNewClient = function () {
		    console.log('Adding new Client');

		    var client = new bn.Client({});
		    selectedClient(client);
		    showNotificationEmail(false);
		    editClient();
		},

		editClient = function () {

		    editingClient(selectedClient());
		    ko.editable(editingClient());
		    editingClient().beginEdit();

		    //set Flag
		    inEditMode(true);
		    fixTabNavigation();
		},

		deleteClient = function () {
		    if (confirm('Are you sure you want to delete this client? All information related to this Client will be deleted.')) {
		        //console.log('inside DeleteVendor');
		        $.ajax("./ClientListing/DeleteClient", {
		            data: ko.toJSON({ clientID: selectedClient().ClientID }),
		            type: "POST", contentType: "application/json",
		            success: function (result) {
		                if (result.Success) {
		                    toastr.success("Client information deleted successfully", "Success");
		                }
		                else {
		                    toastr.error("An unexpected error occurred. Please try again", "Error");
		                }
		                reloadAndReset(true);
		            }
		        });
		    }

		},

		cancelEdit = function () {

		    editingClient().rollback();

		    inEditMode(false);
		    modelIsValid(true); //Reset modelIsValid in case its been 'false'
		    editingClient(undefined);
		    showNotificationEmail(true);

		    reloadAndReset(false); //Reset Tab States
		},

		saveClientDetailsCmd = ko.asyncCommand({
		    execute: function (complete) {
		        if (editingClient()) {
		            editingClient().commit();
		            //POST to Server after fixing everything...
		            console.log('saving Client...');

		            $.ajax("./ClientListing/SaveClient", {
		                data: ko.toJSON({ client: editingClient() }),
		                type: "POST", contentType: "application/json",
		                success: function (result) {
		                    selectedClient(undefined);
		                    editingClient(undefined);
		                    if (result.Success === true) {
		                        loadClients();
		                        toastr.success("Client information updated successfully", "Success");
		                    }
		                }
		            });
		            complete();		//
		            reloadAndReset(true);
		        }
		    },
		    canExecute: function (isExecuting) {
		        return !isExecuting && modelIsValid();
		    }
		}),

        //#region -- Client Notification Email Section
        //--------------------------------------------------------------------------------------


        addNewClientNotification = function () {
            //set Edit Mode flags
            addingNewNotification(true);
            inNotificationEditMode(true);
            //=========
            editingClientNotification(new bn.ClientNotification({ ClientID: selectedClient().ClientID }));
            ko.editable(editingClientNotification());
            editingClientNotification().beginEdit();
            //now push in the Array
            clientNotifications.push(editingClientNotification());
            //make this one selected 
            selectedClientNotification(editingClientNotification());
        },

        editClientNotification = function () {

            //set Edit Mode flags
            addingNewNotification(false);
            inNotificationEditMode(true);

            editingClientNotification(selectedClientNotification());
            ko.editable(editingClientNotification());
            editingClientNotification().beginEdit();

        },

        saveClientNotificationCmd = ko.asyncCommand({
            execute: function (complete) {
                if (editingClientNotification()) {
                    editingClientNotification().commit();
                    //POST to Server after fixing everything...
                    console.log('saving Client Notification...' + editingClientNotification().DivisionID());

                    $.ajax("./ClientListing/SaveClientNotification", {
                        data: ko.toJSON({ ClientNotification: editingClientNotification() }),
                        type: "POST", contentType: "application/json",
                        success: function (result) {
                            console.log(result.Success);
                            if (result.Success === true) {
                                
                                selectedClientNotification(undefined);
                                editingClientNotification(undefined);
                                //if (result.Success === true) {
                                    loadClientNotifications();
                                    toastr.success("Client Notification information updated successfully", "Success");
                                //}
                            }
                            else {
                                toastr.error("An unexpected error occurred. Please try again", "Error");
                            }

                            inNotificationEditMode(false);
                            addingNewNotification(false);
                            editingClientNotification(undefined);
                            selectClientNotification(undefined);
                        }
                    });
                    complete();		//
                    //reloadAndReset(true);
                }
            },
            canExecute: function (isExecuting) {
                return !isExecuting && modelIsValid();
            }
        }),

        deleteClientNotification = function () {
            if (confirm('Are you sure you want to delete this Notification email? ')) {
                console.log('inside Delete Notification Email => ' + selectedClientNotification().NotificationID);
                $.ajax("./ClientListing/DeleteClientNotification", {
                    data: ko.toJSON({ notificationID: selectedClientNotification().NotificationID }),
                    type: "POST", contentType: "application/json",
                    success: function (result) {
                        if (result.Success) {
                            loadClientNotifications();
                            toastr.success("Client Notification email information deleted successfully", "Success");
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }

                        inNotificationEditMode(false);
                        addingNewNotification(false);
                        editingClientNotification(undefined);
                        selectClientNotification(undefined);
                    }
                });
            }
        },

        cancelEditNotification = function () {
            editingClientNotification().rollback();
            //reset flags
            addingNewNotification(false);
            inNotificationEditMode(false);
        },

        loadClientNotifications = function () {
            if (selectedClient().ClientID) {
                $.getJSON("./ClientListing/GetClientNotifications", { ClientID: selectedClient().ClientID }, function (result) {
                    //totalClients(result.VirtualRowCount);
                    var mappedNotification = ko.utils.arrayMap(result.Data, function (item) {
                        return new bn.ClientNotification(item);
                    });
                    //setDocumentTabCounter(totalVendorDocuments());
                    clientNotifications([]);
                    return clientNotifications.push.apply(clientNotifications, mappedNotification);
                });
            }
        },

        loadDivisions = function () {
            $.getJSON("./vendorlisting/GetDivisions", function (result) {
                console.log("==> Loading Division from inside ==> ClientList Details  <==");
                if (result) {
                    var mappedDivision = ko.utils.arrayMap(result.Data, function (item) {
                        var _Division = {};
                        return _Division = {
                            DivisionID: item.DivisionID,
                            Code: item.Code
                        };
                    });
                    ddlDivisions([]);
                    return ddlDivisions.push.apply(ddlDivisions, mappedDivision);
                }
            });
        },

        loadStates = function () {
            $.getJSON("./VendorListing/GetAllStates", function (result) {
                if (result) {
                    var mappedStates = ko.utils.arrayMap(result.Data, function (item) {
                        //console.log('State Name => ' + item.State_Name);
                        var state = {};
                        return state = {
                            StateID: item.StateID,
                            StateName: item.State_Name
                        };
                    });
                    ddlStates([]);
                    //console.log('Length => ' + mappedStates.length);
                    return ddlStates.push.apply(ddlStates, mappedStates);
                }
            });

        },

        loadNoOfDays = function () {
            $.getJSON("./VendorListing/GetNoOfDays", function (result) {
                if (result) {
                    var mappedNoOfDays = ko.utils.arrayMap(result.Data, function (item) {
                        //console.log('State Name => ' + item.State_Name);
                        var numDays = {};
                        return numDays = {
                            NumID: item.NumID,
                            Description: item.Description
                        };
                    });
                    ddlNoOfDays([]);
                    //console.log('Length => ' + mappedNoOfDays.length);
                    return ddlNoOfDays.push.apply(ddlNoOfDays, mappedNoOfDays);
                }
            });
        },

        loadPaymentTerms = function () {
            $.getJSON("./VendorListing/GetPaymentTerms", function (result) {
                if (result) {
                    var mappedPaymentTerms = ko.utils.arrayMap(result.Data, function (item) {
                        //console.log('State Name => ' + item.State_Name);
                        var payTerm = {};
                        return payTerm = {
                            PaymentTermsID: item.PaymentTermsID,
                            PaymentTermsName: item.PaymentTerms
                        };
                    });
                    ddlPaymentTerms([]);
                    //console.log('Length => ' + mappedPaymentTerms.length);
                    return ddlPaymentTerms.push.apply(ddlPaymentTerms, mappedPaymentTerms);
                }
            });
        },

        loadTechProviders = function () {
            $.getJSON("./VendorListing/GetTechnologyProviders", function (result) {
                if (result) {
                    var mappedProviders = ko.utils.arrayMap(result.Data, function (item) {
                        //console.log('State Name => ' + item.State_Name);
                        var provider = {};
                        return provider = {
                            TPID: item.TPID,
                            TPName: item.Description
                        };
                    });
                    ddlTechProviders([]);
                    //console.log('Length => ' + mappedPaymentTerms.length);
                    return ddlTechProviders.push.apply(ddlTechProviders, mappedProviders);
                }
            });

        },



    //-----------------------------------------------------------------------------------
    //#endregion

    loadComboItems = function () {

        if (!ddlDivisions().length) {   //Load if empty
            loadDivisions();
        }
        if (!ddlStates().length) {
            loadStates();
        }
        if (!ddlNoOfDays().length) {
            loadNoOfDays();
        }
        if (!ddlPaymentTerms().length) {
            loadPaymentTerms();
        }
        if (!ddlTechProviders().length) {
            loadTechProviders();
        }

        //loadClientNotifications();
    },


    showDetails = function (item, e) {  // The ShowDetails Tab click handler
        if (selectedClient()) {
            return true;
        }
        else if (clients().length > 0) {
            selectedClient(clients()[0]);   //mark the 1st one as selected
        }
        return true;
    },

    reloadAndReset = function (reLoad) {
        //Reload
        if (reLoad)
            loadClients();
        //--Reset
        selectedClient(undefined);
        //selectedClient.valueHasMutated();   //publish 'undefined'-ness
        editingClient(undefined);
        //isSelected(false);
        inEditMode(false);
        modelIsValid(true);
        //--
        fixTabNavigation();
    },


    fixTabNavigation = function () {
        if (inEditMode()) {
            $('#tabsClientListing li:eq(1) a').tab('show');   // Set the Details tab as 'Active'
            $('#tabsClientListing li a').filter(function (index) {
                return (index === 0) || (index > 1);
            })
            .removeAttr('data-toggle');
        }
        else {
            $('#tabsClientListing li a').attr('data-toggle', 'tab');
            $('#tabsClientListing li:eq(0) a').tab('show');     // Reset the Listing tab to be 'Active' again
        }
    };

    return {

        clients: clients,
        totalClients: totalClients,

        //helpers
        ddlCalendarTypes: ddlCalendarTypes,
        ddlDivisions: ddlDivisions,
        ddlStates: ddlStates,
        ddlTechProviders: ddlTechProviders,
        ddlNoOfDays: ddlNoOfDays,
        ddlPaymentTerms: ddlPaymentTerms,

        loadComboItems: loadComboItems,

        selectedClient: selectedClient,
        editingClient: editingClient,

        //flags
        inEditMode: inEditMode,
        showNotificationEmail: showNotificationEmail,

        //methods
        loadClients: loadClients,
        addNewClient: addNewClient,
        editClient: editClient,
        deleteClient: deleteClient,
        cancelEdit: cancelEdit,
        saveClientDetailsCmd: saveClientDetailsCmd,
        showDetails: showDetails,
        selectClient: selectClient,

        //selectedState: selectedState,   //**

        //Client Notification related
        clientNotifications: clientNotifications,
        selectClientNotification: selectClientNotification,
        selectedClientNotification: selectedClientNotification,
        addingNewNotification: addingNewNotification,
        inNotificationEditMode: inNotificationEditMode,
        addNewClientNotification: addNewClientNotification,
        editClientNotification: editClientNotification,
        deleteClientNotification: deleteClientNotification,
        saveClientNotificationCmd: saveClientNotificationCmd,
        cancelEditNotification: cancelEditNotification,
        loadClientNotifications: loadClientNotifications,

        criteriaClient : criteriaClient,
        criteriaCompany : criteriaCompany,
        criteriaStatus : criteriaStatus
    };

})(jQuery, bn);


$(function () {

    //test... remove later.
    bn.vmClientList.loadComboItems();

    $('#tabsClientListing a').click(function (e) {
        bn.vmClientList.showDetails(e);
    });

    //Set up notification when selection changes
    bn.vmClientList.selectedClient.subscribe(function (data) {
        if (data) {
            console.log('ClientID ==> ' + data.ClientID);
            var clientID = ko.utils.unwrapObservable(data.ClientID);
            var clientNum = ko.utils.unwrapObservable(data.Clinum);
            //send notification
            amplify.publish("ClientSelectionChanged", clientID, clientNum);
            //handle internal stuff{}
            //bn.vmClientList.loadComboItems();
            bn.vmClientList.loadClientNotifications();

        }
        else {
            amplify.publish("ClientSelectionChanged");  //let subscribers do clean-up on empty selection
        }
    });

    amplify.subscribe("EditClient", bn.vmClientList.editClient);


});
