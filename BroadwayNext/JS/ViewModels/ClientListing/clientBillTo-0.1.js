var bn = bn || {};

bn.ClientBillTo = function (data) {

    this.ClientBillToID = data.ClientBillToID;  //PK
    this.ClientID = data.ClientID;
    this.ActiveType = ko.observable(data.ActiveType);
    this.DeliveryOptions = ko.observable(data.DeliveryOptions); 
    this.Division = data.Division;
    this.Contact = ko.observable(data.Contact);
    this.Company = ko.observable(data.Company);
    this.Address1 = ko.observable(data.Address1);
    this.Address2 = ko.observable(data.Address2);
    this.City = ko.observable(data.City);
    console.log('State => ' + data.State);
    this.State = ko.observable(data.State).extend({ required: true });
    this.Zip = ko.observable(data.Zip);
    this.Phone = ko.observable(data.Phone).extend({ required: true });
    //this.PhoneExt = data.BillPhoneExt;    //Currently missing in DB???
    this.Fax = ko.observable(data.Fax);
    this.Email = ko.observable(data.Email).extend({ required: true });

    this.InputDate = moment(data.InputDate).toDate();
    this.InputDate.formatted = moment(data.InputDate).format("MM/DD/YY");
    this.InputBy = ko.observable(data.InputBy);
};


bn.vmClientBillTo = (function ($, bn, undefined) {

    var
        self = this,

        clientBillToes = ko.observableArray([]),
        totalBillToes = ko.observable(),
        clientID = ko.observable(),
        clientNum,

        selectedBillTo = ko.observable(),
        editingBillTo = ko.observable(),
        //===> helpers
        statesList = ko.observableArray([]),
        selectedState = ko.observable(),

        //===> flags
        addingNew = ko.observable(false),
        modelIsValid = ko.observable(true), //This flag is set from the ValidateObservable utility method

        //===> methods
        selectBillTo = function (item) {
            selectedBillTo(item);
        },

        loadClientBillToes = function () {
            if (clientID()) {
                $.getJSON("./ClientListing/GetClientBillToes", { clientID: clientID() }, function (result) {
                    //=====
                    totalBillToes(result.VirtualRowCount);
                    //Now build the VendorDoc 
                    var mappedBillToes = ko.utils.arrayMap(result.Data, function (item) {
                        return new bn.ClientBillTo(item);
                    });
                    //Get the STATES
                    if (!(statesList().length)) {        //if not loaded already
                        getStatesList();
                    }
                    clientBillToes([]);
                    //set the Tab counter
                    setBillToTabCounter(result.VirtualRowCount);
                    clientBillToes.push.apply(clientBillToes, mappedBillToes);
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
            if(bn.vmClientList.selectedClient()){
                editingBillTo(new bn.ClientBillTo(ko.toJS(bn.vmClientList.selectedClient())));
                ko.editable(editingBillTo());
                editingBillTo().beginEdit();
            }
            else {
                alert('Please select a Client from the Client List first');
            }
        },

        addNewBillTo = function () {
            editingBillTo(new bn.ClientBillTo({ ClientID: clientID() }));
            ko.editable(editingBillTo());
            editingBillTo().beginEdit();
            //set the flag
            addingNew(true);
        },

        editBillTo = function () {
            editingBillTo(selectedBillTo());
            ko.editable(editingBillTo());
            editingBillTo().beginEdit();
        },

        saveBillTo = function (element, data, e) {
            console.log('Model Valid => ' + modelIsValid());
            //==
            var errors = ko.validation.group(editingBillTo());
            if (errors().length) {
                console.log('Found Error');
                alert('Please provide necessary information : ' + errors().length);
                modelIsValid(false);
                return false;
            }
            else {
                console.log('No Error');
                editingBillTo().commit();
                console.log(editingBillTo().ClientID);
                $.ajax("./ClientListing/SaveClientBillTo", {
                    data: ko.toJSON({ ClientBillTo: editingBillTo() }),
                    type: "POST", contentType: "application/json",
                    success: function (result) {
                        //reset Flags
                        selectedBillTo(undefined);
                        editingBillTo(undefined);
                        if (result.Success === true) {
                            loadClientBillToes();

                            toastr.success("Bill To information updated successfully", "Success");
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }
                        if(addingNew()){
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
            if(addingNew()){    //reset Flag
                addingNew(false);
            }
            modelIsValid(true);         //Reset modelIsValid in case its been 'false'
            $("#modal-ClientBillTo").modal("hide");
        },

        //subscribe to receive Selected Client ID & Num
        onclientSelectionChanged = function (id, num) {
            //debugger;
            if (id) {
                clientID(id);
                clientNum = num;
                loadClientBillToes();    //Re-load on valid ID  

                //Get the STATES
                if (!(statesList().length)) {        //if not loaded already
                    console.log('Inside onClientSelectionChanged... Going to fetch statesList if empty => ' + statesList().length);
                    getStatesList();
                }
            }
            selectedBillTo(undefined);
        },

        editClient = function () {
            amplify.publish("EditClient");
        },

        setBillToTabCounter = function (count) {
            //set the Tab counter
            var tabName = 'BillTo';
            if (count && count > 0) {
                tabName = tabName + ' (' + count + ')';
            }
            $('#tabsClientListing li:eq(4) a').html(tabName);

        };

    return {

        totalBillToes: totalBillToes,
        clientBillToes: clientBillToes,
        modelIsValid: modelIsValid,

        statesList: statesList,
        selectedState: selectedState,
        
        addingNew: addingNew,

        clientID: clientID,
        selectedBillTo: selectedBillTo,
        editingBillTo: editingBillTo,
        selectBillTo: selectBillTo,
        clientSelectionChanged: onclientSelectionChanged,

        loadClientBillToes: loadClientBillToes,
        addNewBillTo: addNewBillTo,
        editBillTo: editBillTo,
        saveBillTo: saveBillTo,
        deleteBillTo: deleteBillTo,
        cancelEdit: cancelEdit,
        copyFromDetails: copyFromDetails,
        editClient: editClient

    };


})(jQuery, bn);



$(function () {

    amplify.subscribe("ClientSelectionChanged", function (cID, cNum) {
        //console.log(vID);
        bn.vmClientBillTo.clientSelectionChanged(cID, cNum);
    });

    bn.vmClientBillTo.loadClientBillToes();

});