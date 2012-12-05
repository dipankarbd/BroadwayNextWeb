var bn = bn || {};

bn.ClientPrefix = function (data) {
    var self = this;
    self.ClientPrefixID = data.ClientPrefixID;
    self.ClientID = data.ClientID;
    self.Prefix = ko.observable(data.Prefix);
    self.BrandName = ko.observable(data.BrandName);
    self.InputDate = moment(data.InputDate).toDate();
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YY");
    self.InputBy = data.InputBy ? data.InputBy : "";
};

bn.vmClientPrefix = (function ($, bn, undefined) {

    var
        self = this,
        clientPrefixs = ko.observableArray([]),
       
        totalClientPrefixs = ko.observable(),
        clientID = ko.observable(),
        clientNum,

        selectedClientPrefix = ko.observable(),
        editingClientPrefix = ko.observable(),
        modelIsValid = ko.observable(true),	 //This flag is set from the ValidateObservable utility method
        //===> flags
        addingPrefixNew = ko.observable(false);
        inPrefixEditMode = ko.observable(false);
        IsValid = ko.observable(false);
        IsExist = ko.observable(true);

    //===> methods
    selectClientPrefix = function (item) {
        if (!addingPrefixNew() && !inPrefixEditMode()) {
            selectedClientPrefix(item);
        }



    },

    loadClientPrefixs = function () {
        if (clientID()) {
            $.getJSON("./ClientListing/GetClientPrefixs", { clientID: clientID() }, function (result) {
                //=====
                totalClientPrefixs(result.VirtualRowCount);
                var mappedClientPrefixs = ko.utils.arrayMap(result.Data, function (item) {
                    return new bn.ClientPrefix(item);
                });
                clientPrefixs([]);

                //set the Tab counter
                setTabCounter(totalClientPrefixs());
                return clientPrefixs.push.apply(clientPrefixs, mappedClientPrefixs);
            });
        }
    },

    
    addNewClientPrefix = function () {
        editingClientPrefix(new bn.ClientPrefix({ ClientID: clientID() }));
        ko.editable(editingClientPrefix());
        editingClientPrefix().beginEdit();
        clientPrefixs.push(editingClientPrefix());

        selectedClientPrefix(editingClientPrefix());
        //set the flag
        addingPrefixNew(true);
        inPrefixEditMode(true);
    },

    editClientPrefix = function () {
        editingClientPrefix(selectedClientPrefix());
        ko.editable(editingClientPrefix());
        editingClientPrefix().beginEdit();
        inPrefixEditMode(true);
    },

    saveClientPrefix = function (element) {

        editingClientPrefix().commit();
        console.log(editingClientPrefix().ClientID);
        $.ajax("./ClientListing/SaveClientPrefix", {
            data: ko.toJSON({ ClientPrefix: editingClientPrefix() }),
            type: "POST", contentType: "application/json",
            success: function (result) {
                //reset Flags
                selectedClientPrefix(undefined);
                editingClientPrefix(undefined);
                if (result.Success === true) {
                    loadClientPrefixs();
                    inPrefixEditMode(false);
                    addingPrefixNew(false);
                    toastr.success("Brand information updated successfully", "Success");
                }
                else {
                    toastr.error("An unexpected error occurred. Please try again", "Error");
                }


            }
        });
    },


    deleteClientPrefix = function () {
        if (confirm('Are you sure you want to delete this Brand record? All information will be deleted.')) {
            //console.log('inside DeleteVendor');
            $.ajax("./ClientListing/DeleteClientPrefix", {
                data: ko.toJSON({ ID: selectedClientPrefix().ClientPrefixID }),
                type: "POST", contentType: "application/json",
                success: function (result) {
                    if (result.Success) {
                        toastr.success("Brand information deleted successfully", "Success");
                        loadClientPrefixs();
                    }
                    else {
                        toastr.error("An unexpected error occurred. Please try again", "Error");
                    }
                }
            });
        }
    },

    cancelEdit = function () {
        editingClientPrefix().rollback();
        if (addingPrefixNew()) {
            clientPrefixs.pop();
            addingPrefixNew(false);
            selectedClientPrefix(undefined);
        }
        if (inPrefixEditMode()) {
            inPrefixEditMode(false);
        }

    },


    CheckPrefix = function () {
        if (editingClientPrefix()) {
            var prefix = editingClientPrefix().Prefix();                
            if (prefix) {
                $.ajax("./ClientListing/CheckClientPrefix", {
                    data: ko.toJSON({ ClientPrefix: editingClientPrefix(), Prefix: prefix }),
                    type: "POST", contentType: "application/json",
                    success: function (result) {
                        if (result.IsExist ) {
                            //toastr.error("Prefix already exist. Please try another", "Error");
                            alert("Prefix already exist. Please try another.");
                            IsExist(false);
                            CheckValidation();                            
                        }
                        else {
                            IsExist(true);
                            CheckValidation();                            
                            //toastr.success("Brand information deleted successfully", "Success");
                            
                        }
                    }
                });
            }            
            else {
                CheckValidation();
            }

        }

    },
    
    CheckValidation = function () {
        var prefix = editingClientPrefix().Prefix();
        var brandName = editingClientPrefix().BrandName();
        if (prefix && brandName && IsExist()) {
            IsValid(true);
        }
        else {
            IsValid(false);
        }
        
    },
    

    //subscribe to receive Selected Client ID & Num
    onclientSelectionChanged = function (id, num) {
        //debugger;
        if (id) {
            clientID(id);
            clientNum = num;

            //if (!Divisions().length)    //Load if empty
            //    loadDivisions();
            //if (!UserGroups().length)    //Load if empty
            //    loadUserGroups();
            //if (!Users().length)    //Load if empty
            //    loadUsers();
            //Re-load on valid ID  
            loadClientPrefixs();
        }
        selectedClientPrefix(undefined);
        inPrefixEditMode(false);
    },

    editClient = function () {
        amplify.publish("EditClient");
    },

    setTabCounter = function (count) {
        //set the Tab counter
        var tabName = 'Brand';
        if (count > 0) {
            tabName = tabName + ' (' + count + ')';
        }
        $('#tabsClientListing li:eq(9) a').html(tabName);

    };

    return {

        totalClientPrefixs: totalClientPrefixs,
        clientPrefixs: clientPrefixs,
        //Divisions: Divisions,
        //UserGroups: UserGroups,
        //Users: Users,
        modelIsValid: modelIsValid,
        inPrefixEditMode: inPrefixEditMode,
        addingPrefixNew: addingPrefixNew,

        clientID: clientID,
        selectedClientPrefix: selectedClientPrefix,
        editingClientPrefix: editingClientPrefix,
        selectClientPrefix: selectClientPrefix,
        clientSelectionChanged: onclientSelectionChanged,

        loadClientPrefixs: loadClientPrefixs,
        addNewClientPrefix: addNewClientPrefix,
        editClientPrefix: editClientPrefix,
        saveClientPrefix: saveClientPrefix,
        deleteClientPrefix: deleteClientPrefix,
        cancelEdit: cancelEdit,
        editClient: editClient,

        CheckPrefix: CheckPrefix,
        CheckValidation:CheckValidation,
        IsValid: IsValid
    };
})(jQuery, bn);

$(function () {

    amplify.subscribe("ClientSelectionChanged", function (cID, cNum) {
        //console.log(vID);
        bn.vmClientPrefix.clientSelectionChanged(cID, cNum);
    });

    bn.vmClientPrefix.loadClientPrefixs();
});
