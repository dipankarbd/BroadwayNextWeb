var bn = bn || {};


//#region "MODEL"
bn.Client = function (data) {
	//---
	console.log('inside bn.Client');

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
	this.WebSite = ko.observable(data.WebSite);
	this.DNE = ko.observable(data.DNE);

	this.InputDate = moment(data.InputDate).toDate();
	this.InputDate.formatted = moment(data.InputDate).format("MM/DD/YY");
	this.InputBy = data.InputBy;

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
		modelIsValid = ko.observable(),
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


		},

		cancelEdit = function () {

			editingClient().rollback();
			
			inEditMode(false);
			modelIsValid(true); //Reset modelIsValid in case its been 'false'
			editingClient(undefined);

			fixTabNavigation(); //Reset Tab States
		},

		saveClientDetailsCmd = ko.asyncCommand({
			execute: function (complete) {
				if (editingNote()) {
					editingClient().commit();
					//POST to Server after fixing everything...
					console.log('saving Client...');

					$.ajax("./ClientListing/SaveClient", {
						data: ko.toJSON({ note: editingNote() }),
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
				}
			},
			canExecute: function (isExecuting) {
				return !isExecuting && modelIsValid();
			}
		}),

		

		fixTabNavigation = function () {
			if (inEditMode()) {
				$('#tabsClientListing li:eq(1) a').tab('show');   // Set the Details tab as 'Active'
				$('#tabsClientListing li a').filter(function (index) {
					return (index == 0) || (index > 3);
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

		selectClient: selectClient
	};

})(jQuery, bn);

$(function () {



});