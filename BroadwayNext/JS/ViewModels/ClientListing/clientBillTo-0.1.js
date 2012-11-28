var bn = bn || {};

bn.ClientBillTo = function (data) {

    this.ClientBillToID = data.ClientBillToID;  //PK
    this.ClientID = data.ClientID;
    this.ActiveType = ko.observable(data.ActiveType);
    this.DeliveryOptions = ko.observable(data.DeliveryOptions); 
    this.Division = data.Division;
    this.Contact = ko.observable(data.BillContact);
    this.Company = ko.observable(data.BillCompany);
    this.Address1 = ko.observable(data.BillAddress1);
    this.Address2 = ko.observable(data.BillAddress2);
    this.City = ko.observable(data.BillCity);
    this.State = data.BillState;
    this.Zip = ko.observable(data.BillZip);
    this.Phone = ko.observable(data.BillPhone);
    //this.PhoneExt = data.BillPhoneExt;    //Currently missing in DB???
    this.Fax = ko.observable(data.BillFax);
    this.Email = ko.observable(data.BillEmail);

    this.InputDate = moment(data.InputDate).toDate();
    this.InputDate.formatted = moment(data.InputDate).format("MM/DD/YY");
    this.InputBy = ko.observable(data.InputBy);
};


bn.vmClientBillTo = (function () {

    var
        self = this,

        clientBillToes = ko.observableArray([]),
        totalBillToes = ko.observable(),
        clientID, clientNum,

        selectedBillTo = ko.observable(),
        editingBillTo = ko.observable(),
        modelIsValid = ko.observable(true),	 //This flag is set from the ValidateObservable utility method
        //===> flags


        //===> methods
        selectBillTo = function (item) {
            selectedBillTo(item);
        },

        loadClientBillToes = function () {
            if (clientID) {
                $.getJSON("./ClientListing/GetClientBillToes", { clientID: clientID }, function (result) {
                    //=====
                    totalBillToes(result.VirtualRowCount);
                    //Now build the VendorDoc 
                    var mappedBillToes = ko.utils.arrayMap(result.Data, function (item) {
                        return new bn.ClientBillTo(item);
                    });
                    //setDocumentTabCounter(totalVendorDocuments());
                    clientBillToes([]);
                    return clientBillToes.push.apply(clientBillToes, mappedBillToes);
                });
            }

        },

        addNewBillTo = function () {
            editingBillTo(new bn.ClientBillTo({ ClientID: clientID }));
            ko.editable(editingBillTo());
            editingBillTo().beginEdit();
        },

        editBillTo = function () {
            editingBillTo(selectedBillTo());
            ko.editable(editingBillTo());
            editBillTo().beginEdit();
        },

        saveBillTo = function () {

            editingBillTo().commit();

            $.ajax("./ClientListing/SaveClientBillTo", {
                data: ko.toJSON({ billTo: editingBillTo() }),
                type: "POST", contentType: "application/json",
                success: function (result) {
                    //reset Flags
                    selectedShipTo(undefined);
                    editingShipTo(undefined);
                    if (result.Success === true) {
                        loadClientBillToes();
                        $("#modal-ClientBillTo").modal("hide");
                        toastr.success("Bill To information updated successfully", "Success");
                    }
                }
            });
        },

        deleteBillTo = function () {
            if (confirm('Are you sure you want to delete this Bill To record? All information will be deleted.')) {
                //console.log('inside DeleteVendor');
                $.ajax("./ClientListing/DeleteBillTo", {
                    data: ko.toJSON({ billToID: selectedBillTo().ClientBillToID }),
                    type: "POST", contentType: "application/json",
                    success: function (result) {
                        if (result.Success) {
                            toastr.success("Bill To information deleted successfully", "Success");
                            loadClientBillToes();
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }
                    }
                });
            }
        },

        cancelEdit = function () {
            editingBillTo().rollback();
            $("#modal-ClientBillTo").modal("hide");
        },

        //subscribe to receive Selected Client ID & Num
        onclientSelectionChanged = function (id, num) {
            //debugger;
            if (id) {
                //ClientID(id);
                clientID = id;
                clientNum = num;
                loadClientBillToes();    //Re-load on valid ID  

                //if (!Divisions().length) {    //Load if empty
                //    fetchDivision();
                //}
            }

            selectedBillTo(undefined);
            //console.log(clientID() + " -- " + vendorNum);
        },

        editClient = function () {
            amplify.publish("EditClient");
        };

    return {

        totalBillToes: totalBillToes,
        clientBillToes: clientBillToes,
        modelIsValid: modelIsValid,

        selectedBillTo: selectedBillTo,
        editingBillTo: editingBillTo,
        selectBillTo: selectBillTo,
        clientSelectionChanged: onclientSelectionChanged,

        loadClientBillToes: loadClientBillToes,
        addNewBillTo: addNewBillTo,
        editBillTo: editBillTo,
        deleteBillTo: deleteBillTo,
        cancelEdit: cancelEdit,
        editClient: editClient

    };


})();



$(function () {

    amplify.subscribe("ClientSelectionChanged", function (cID, cNum) {
        //console.log(vID);
        bn.vmClientBillTo.clientSelectionChanged(cID, cNum);
    });

    bn.vmClientBillTo.loadClientBillToes();

});