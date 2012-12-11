var bn = bn || {};

bn.ClientContact = function (data) {

    this.ClientContactID = data.ClientContactID;  //PK
    this.ClientID = data.ClientID;
    this.Clinum = ko.observable(data.Clinum);
    this.Lastname = ko.observable(data.Lastname);
    this.Firstname = ko.observable(data.Firstname);
    this.Initial = ko.observable(data.Initial);   
    this.Address1 = ko.observable(data.Address1);
    this.Address2 = ko.observable(data.Address2);
    this.City = ko.observable(data.City);
    //console.log('Contact State => ' + data.State);
    this.State = ko.observable(data.State).extend({ required: true });
    this.Zip = ko.observable(data.Zip);
    this.Country = ko.observable(data.Country);
    this.Province = ko.observable(data.Province);    
    this.Phone = ko.observable(data.Phone).extend({ required: true });
    this.PhoneExt = ko.observable(data.PhoneExt);   
    this.Fax = ko.observable(data.Fax);
    this.Pager = ko.observable(data.Pager);
    this.Mobile = ko.observable(data.Mobile);
    this.Title = ko.observable(data.Title);
    this.Salutation = ko.observable(data.Salutation);
    this.ContactType = ko.observable(data.ContactType);
    this.Email = ko.observable(data.Email).extend({ required: true });
    this.Website = ko.observable(data.Website);
    this.Notes = ko.observable(data.Notes);
    this.ReferBy = ko.observable(data.ReferBy);
    this.ActiveType = ko.observable(data.ActiveType);
   
    this.InputDate = moment(data.InputDate).toDate();
    this.InputDate.formatted = moment(data.InputDate).format("MM/DD/YY");
    this.InputBy = ko.observable(data.InputBy);
};


bn.vmClientContact = (function ($, bn, undefined) {

    var
        self = this,

        clientContacts = ko.observableArray([]),
        totalContacts = ko.observable(),
        clientID = ko.observable(),
        clientNum,

        selectedContact = ko.observable(),
        editingContact = ko.observable(),
        //===> helpers
        statesList = ko.observableArray([]),
        selectedState = ko.observable(),
		countries = ["USA", "Canada"],

        //===> flags
        addingNew = ko.observable(false),
        modelIsValid = ko.observable(true), //This flag is set from the ValidateObservable utility method

        //===> methods
        selectContact = function (item) {
            selectedContact(item);
        },

        loadClientContacts = function () {
            if (clientID()) {
                $.getJSON("./ClientListing/GetClientContacts", { clientID: clientID() }, function (result) {
                    //=====
                    totalContacts(result.VirtualRowCount);
                    //Now build the VendorDoc 
                    var mappedContacts = ko.utils.arrayMap(result.Data, function (item) {
                        return new bn.ClientContact(item);
                    });
                    //Get the STATES
                    if (!(statesList().length)) {        //if not loaded already
                        getStatesList();
                    }
                    clientContacts([]);
                    //set the Tab counter
                    setContactTabCounter(result.VirtualRowCount);
                    clientContacts.push.apply(clientContacts, mappedContacts);
                });
            }

        },

        getStatesList = function () {
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
                    statesList([]);
                    //console.log('Length => ' + mappedStates.length);
                    return statesList.push.apply(statesList, mappedStates);
                }
            });

        },

        copyFromDetails = function () {
            if (bn.vmClientList.selectedClient()) {
                editingContact(new bn.ClientContact(ko.toJS(bn.vmClientList.selectedClient())));
                //editingContact(new bn.ClientContact((bn.vmClientList.selectedClient())));
                //--
                ko.editable(editingContact());
                editingContact().beginEdit();
            }
            else {
                alert('Please select a Client from the Client List first');
            }
        },

        addNewContact = function () {
            editingContact(new bn.ClientContact({ ClientID: clientID() }));
            ko.editable(editingContact());
            editingContact().beginEdit();
            //set the flag
            addingNew(true);
        },

        editContact = function () {
            editingContact(selectedContact());
            ko.editable(editingContact());
            editingContact().beginEdit();
        },

        saveContact = function (element, data, e) {
            console.log('Model Valid => ' + modelIsValid());
            //==
            var errors = ko.validation.group(editingContact());
            if (errors().length) {
                console.log('Found Error');
                alert('Please provide necessary information : ' + errors().length);
                modelIsValid(false);
                return false;
            }
            else {
                console.log('No Error');
                editingContact().commit();
                console.log(editingContact().ClientID);
                $.ajax("./ClientListing/SaveClientContact", {
                    data: ko.toJSON({ ClientContact: editingContact() }),
                    type: "POST", contentType: "application/json",
                    success: function (result) {
                        //reset Flags
                        selectedContact(undefined);
                        editingContact(undefined);
                        if (result.Success === true) {
                            loadClientContacts();

                            toastr.success("Contact information updated successfully", "Success");
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }
                        if (addingNew()) {
                            addingNew(false);
                        }
                        if (element) {
                            $(element).modal('hide');
                        }
                    }
                });
            }
            console.log('should not reach here');

            //==

        },

        deleteContact = function () {
            if (confirm('Are you sure you want to delete this Contact record? All information will be deleted.')) {
                //console.log('inside DeleteVendor');
                $.ajax("./ClientListing/DeleteContact", {
                    data: ko.toJSON({ clientContactID: selectedContact().ClientContactID }),
                    type: "POST", contentType: "application/json",
                    success: function (result) {
                        if (result.Success) {
                            toastr.success("Contact information deleted successfully", "Success");
                            selectedContact(undefined);
                            loadClientContacts();
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }
                    }
                });
            }
        },

        cancelEdit = function () {
            editingContact().rollback();
            if (addingNew()) {    //reset Flag
                addingNew(false);
            }
            modelIsValid(true);         //Reset modelIsValid in case its been 'false'
            $("#modal-ClientContact").modal("hide");
        },

        //subscribe to receive Selected Client ID & Num
        onclientSelectionChanged = function (id, num) {
            //debugger;
            if (id) {
                clientID(id);
                clientNum = num;
                loadClientContacts();    //Re-load on valid ID  

                //Get the STATES
                if (!(statesList().length)) {        //if not loaded already
                    console.log('Inside onClientSelectionChanged... Going to fetch statesList if empty => ' + statesList().length);
                    getStatesList();
                }
            }
            selectedContact(undefined);
        },

        editClient = function () {
            amplify.publish("EditClient");
        },

        setContactTabCounter = function (count) {
            //set the Tab counter
            var tabName = 'Contacts';
            if (count && count > 0) {
                tabName = tabName + ' (' + count + ')';
            }
            $('#tabsClientListing li:eq(3) a').html(tabName);

        };

    return {

        totalContacts: totalContacts,
        clientContacts: clientContacts,
        modelIsValid: modelIsValid,

        statesList: statesList,
        selectedState: selectedState,
		countries: countries,

        addingNew: addingNew,

        clientID: clientID,
        selectedContact: selectedContact,
        editingContact: editingContact,
        selectContact: selectContact,
        clientSelectionChanged: onclientSelectionChanged,

        loadClientContacts: loadClientContacts,
        addNewContact: addNewContact,
        editContact: editContact,
        saveContact: saveContact,
        deleteContact: deleteContact,
        cancelEdit: cancelEdit,
        copyFromDetails: copyFromDetails,
        editClient: editClient

    };


})(jQuery, bn);



$(function () {

    amplify.subscribe("ClientSelectionChanged", function (cID, cNum) {
        //console.log(vID);
        bn.vmClientContact.clientSelectionChanged(cID, cNum);
    });

    bn.vmClientContact.loadClientContacts();

});