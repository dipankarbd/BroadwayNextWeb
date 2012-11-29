var bn = bn || {};

bn.ClientAssignment = function (data) {

    this.ClientManagerID = data.ClientManagerID;  //PK
    this.ClientID = data.ClientID;
    this.Title = ko.observable(data.Title);   
    this.DivisionID = data.DivisionID;
    this.Operator = ko.observable(data.Operator);
    this.InputDate = moment(data.InputDate).toDate();
    this.InputDate.formatted = moment(data.InputDate).format("MM/DD/YY");
    this.InputBy = data.InputBy ? data.InputBy : "";
};

bn.vmClientAssignment = (function ($, bn, undefined) {

    var
        self = this,
        clientAssignments = ko.observableArray([]),
        Divisions = ko.observableArray([]),
        UserGroups = ko.observableArray([]),
        Users = ko.observableArray([]),
        totalClientAssignments = ko.observable(),
        clientID = ko.observable(),
        clientNum,

        selectedClientAssignment = ko.observable(),
        editingClientAssignment = ko.observable(),
        modelIsValid = ko.observable(true),	 //This flag is set from the ValidateObservable utility method
        //===> flags
        addingNew = ko.observable(false);
        inEditMode = ko.observable(false);

    //===> methods
    selectClientAssignment = function (item) {
        selectedClientAssignment(item);
    },

    loadClientAssignments = function () {
        if (clientID()) {
            $.getJSON("./ClientListing/GetClientAssignments", { clientID: clientID() }, function (result) {
                //=====
                totalClientAssignments(result.VirtualRowCount);
                //Now build the VendorDoc 
                var mappedClientAssignments = ko.utils.arrayMap(result.Data, function (item) {
                    return new bn.ClientAssignment(item);
                });
                //setDocumentTabCounter(totalVendorDocuments());
                clientAssignments([]);
                
                //set the Tab counter
                setTabCounter(totalClientAssignments());
                return clientAssignments.push.apply(clientAssignments, mappedClientAssignments);
            });
        }
    },

    loadDivisions = function () {
        $.getJSON("./vendorlisting/GetDivisions", function (result) {          
                          
            if (result) {
                var mappedDivision = ko.utils.arrayMap(result.Data, function (item) {
                    var _Division = {};
                    return _Division = {
                        DivisionID: item.DivisionID,
                        Code: item.Code
                    };
                });

                Divisions([]);
                return Divisions.push.apply(Divisions, mappedDivision);                
            }
        });
    },

    loadUserGroups = function () {
        $.getJSON("./ClientListing/GetUserGroups", function (result) {
            if (result) {
                var mappedUserGroups = ko.utils.arrayMap(result, function (item) {
                    var _UserGroups = {};
                    return _UserGroups = {
                        Title: item.UserGroupID,
                        GroupName: item.GroupName
                    };
                });

                UserGroups([]);
                return UserGroups.push.apply(UserGroups, mappedUserGroups);                
            }
        });
    },

    loadUsers = function () {
        $.getJSON("./ClientListing/GetUsers", function (result) {
            if (result) {
                var mappedUsers = ko.utils.arrayMap(result, function (item) {
                    var _Users = {};
                    return _Users = {
                        Operator: item.UserID,
                        Displayname: item.Displayname
                    };
                });

                Users([]);
                return Users.push.apply(Users, mappedUsers);
            }
        });
    },


    addNewClientAssignment = function () {
        editingClientAssignment(new bn.ClientAssignment({ ClientID: clientID() }));
        ko.editable(editingClientAssignment());
        editingClientAssignment().beginEdit();
        clientAssignments.push.apply(clientAssignments, editingClientAssignment());
        //set the flag
        addingNew(true);
        inEditMode(true);
    },

    editClientAssignment = function () {
        editingClientAssignment(selectedClientAssignment());
        ko.editable(editingClientAssignment());
        editingClientAssignment().beginEdit();
        inEditMode(true);
    },

    saveClientAssignment = function (element) {

        editingClientAssignment().commit();
        console.log(editingClientAssignment().ClientID);
        $.ajax("./ClientListing/SaveClientAssignment", {
            data: ko.toJSON({ ClientManager: editingClientAssignment() }),
            type: "POST", contentType: "application/json",
            success: function (result) {
                //reset Flags
                selectedClientAssignment(undefined);
                editingClientAssignment(undefined);
                if (result.Success === true) {
                    loadClientAssignments();
                    inEditMode(false);
                    toastr.success("Assignment information updated successfully", "Success");
                }
                else {
                    toastr.error("An unexpected error occurred. Please try again", "Error");
                }
                if(addingNew()){
                    addingNew(false);
                }
                //if (element) {
                //    $(element).modal('hide');
                //}
            }
        });
    },

    //saveClientAssignmentCmd = ko.asyncCommand({
    //    execute: function (complete) {
    //        if (editingClient()) {
    //            editingClient().commit();
    //            //POST to Server after fixing everything...
    //            console.log('saving Client...');

    //            $.ajax("./ClientListing/SaveClient", {
    //                data: ko.toJSON({ client: editingClient() }),
    //                type: "POST", contentType: "application/json",
    //                success: function (result) {
    //                    selectedClient(undefined);
    //                    editingClient(undefined);
    //                    if (result.Success === true) {
    //                        loadClients();
    //                        toastr.success("Client information updated successfully", "Success");
    //                    }
    //                }
    //            });
    //            complete();		//
    //            reloadAndReset(true);
    //        }
    //    },
    //    canExecute: function (isExecuting) {
    //        return !isExecuting && modelIsValid();
    //    }
    //}),

    deleteClientAssignment = function () {
        if (confirm('Are you sure you want to delete this Assignment record? All information will be deleted.')) {
            //console.log('inside DeleteVendor');
            $.ajax("./ClientListing/DeleteClientAssignment", {
                data: ko.toJSON({ ID: selectedClientAssignment().ClientManagerID }),
                type: "POST", contentType: "application/json",
                success: function (result) {
                    if (result.Success) {
                        toastr.success("Assignment information deleted successfully", "Success");
                        loadClientAssignments();
                    }
                    else {
                        toastr.error("An unexpected error occurred. Please try again", "Error");
                    }
                }
            });
        }
    },

    cancelEdit = function () {
        editingClientAssignment().rollback();
        if(addingNew()){    //reset Flag
            addingNew(false);
        }
        if (inEditMode()) {
            inEditMode(false);
        }        
        //$("#modal-ClientAssignment").modal("hide");
    },

    //subscribe to receive Selected Client ID & Num
    onclientSelectionChanged = function (id, num) {
        //debugger;
        if (id) {
            clientID(id);
            clientNum = num;
            loadClientAssignments();    //Re-load on valid ID  

            if (!Divisions().length)    //Load if empty
                loadDivisions();
            if (!UserGroups().length)    //Load if empty
                loadUserGroups();
            if (!Users().length)    //Load if empty
                loadUsers();
        }
        selectedClientAssignment(undefined);
    },

    editClient = function () {
        amplify.publish("EditClient");
    },

    setTabCounter = function (count) {
        //set the Tab counter
        var tabName = 'Assignment';
        if (count && count > 0) {
            tabName = tabName + ' (' + count + ')';
        }
        $('#tabsClientListing li:eq(7) a').html(tabName);

    };

    return {

        totalClientAssignments: totalClientAssignments,
        clientAssignments: clientAssignments,
        Divisions:Divisions,
        UserGroups: UserGroups,
        Users :Users ,
        modelIsValid: modelIsValid,
        inEditMode:inEditMode,
        addingNew: addingNew,

        clientID: clientID,
        selectedClientAssignment: selectedClientAssignment,
        editingClientAssignment: editingClientAssignment,
        selectClientAssignment: selectClientAssignment,
        clientSelectionChanged: onclientSelectionChanged,

        loadClientAssignments: loadClientAssignments,
        addNewClientAssignment: addNewClientAssignment,
        editClientAssignment: editClientAssignment,
        saveClientAssignment: saveClientAssignment,
        deleteClientAssignment: deleteClientAssignment,
        cancelEdit: cancelEdit,
        editClient: editClient

    };
})(jQuery, bn);

$(function () {

    amplify.subscribe("ClientSelectionChanged", function (cID, cNum) {
        //console.log(vID);
        bn.vmClientAssignment.clientSelectionChanged(cID, cNum);
    });

    bn.vmClientAssignment.loadClientAssignments();

});
