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
	this.State = ko.observable(data.State);
	this.Zip = ko.observable(data.Zip);
	this.FirstName = ko.observable(data.FirstName);
	this.LastName = ko.observable(data.LastName);
	this.Phone = ko.observable(data.Phone);
	this.PhoneExt = ko.observable(data.PhoneExt);
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

	//---
};


bn.vmClientList = (function (jQuery, bn, undefined) {

	var
		self = this,

		clients = ko.observableArray([]),
		totalClients = ko.observable(),

		selectedClient = ko.observable(),
		editingClient = ko.observable(),

		//flags
		isSelected = ko.observable(),
		inEditMode = ko.observable(),
		modelIsValid = ko.observable(true),	 //This flag is set from the ValidateObservable utility method


		//methods
		selectClient = function (client) {
			selectedClient(client);
			isSelected(true);
		},

		loadClients = function () {

			$.getJSON("./ClientListing/GetClients", function (result) {
				//=====
				totalClients(result.VirtualRowCount);
				//Now build the VendorDoc 
				var mappedClients = ko.utils.arrayMap(result.Data, function (item) {
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
			editClient();
			

			//prepareModalDialog();
			//$("#dialog-note").dialog("open");
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
					return (index == 0) || (index > 1);
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

		selectedClient: selectedClient,
		editingClient: editingClient,
		inEditMode: inEditMode,

		//methods
		loadClients: loadClients,
		addNewClient: addNewClient,
		editClient: editClient,
		deleteClient: deleteClient,
		cancelEdit: cancelEdit,
		saveClientDetailsCmd: saveClientDetailsCmd,
        showDetails: showDetails,
		selectClient: selectClient
	};

})(jQuery, bn);


$(function () {

    $('#tabsClientListing a').click(function (e) {
        bn.vmClientList.showDetails(e);
    })

    //Set up notification when selection changes
    bn.vmClientList.selectedClient.subscribe(function (data) {
        if (data) {
            console.log('ClientID ==> ' + data.ClientID);
            var clientID = ko.utils.unwrapObservable(data.ClientID);
            var clientNum = ko.utils.unwrapObservable(data.Clinum);
            //send notification
            amplify.publish("ClientSelectionChanged", clientID, clientNum);
        }
        else {
            amplify.publish("ClientSelectionChanged");  //let subscribers do clean-up on empty selection
        }
    });

    amplify.subscribe("EditClient", bn.vmClientList.editClient);

});
