var bn = bn || {};

bn.ClientAssignment = function (data) {
    var self = this;
    self.ClientManagerID = data.ClientManagerID;  //PK
    self.ClientID = data.ClientID;
    self.Title = ko.observable(data.Title);
    self.TitleText = function () {
        if (self.Title() && bn.vmClientAssignment.UserGroups().length) {
            var _Title = ko.utils.arrayFirst(bn.vmClientAssignment.UserGroups(), function (item) {
               // console.log('item.Title:' + item.Title+ 'item.Title():' + this.Title());
                return (self.Title() === item.Title);
            });
            if (_Title) {
                return _Title.GroupName.toString();
            }
        }
    };
    self.DivisionID = ko.observable(data.DivisionID);
    self.DivisionText = function () {
        if (self.DivisionID() && bn.vmClientAssignment.Divisions().length) {
            var _Division = ko.utils.arrayFirst(bn.vmClientAssignment.Divisions(), function (item) {
                //console.log('item.DivisionID' + item.DivisionID);
                return (self.DivisionID() === item.DivisionID);
            });
            if (_Division) {
                return _Division.Code.toString();
            }
        }
    };
    self.Operator = ko.observable(data.Operator);
    self.OperatorText = function () {
        if (self.Operator() && bn.vmClientAssignment.Users().length) {
            var _Operator = ko.utils.arrayFirst(bn.vmClientAssignment.Users(), function (item) {
                //console.log('item.Operator' + item.Operator);
                return (self.Operator() === item.Operator);
            });
            if (_Operator) {
                return _Operator.Displayname.toString();
            }
        }
    };
    self.InputDate = moment(data.InputDate).toDate();
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YY");
    self.InputBy = data.InputBy ? data.InputBy : "";
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
        clientAssignments.push(editingClientAssignment());
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
                    addingNew(false);
                    toastr.success("Assignment information updated successfully", "Success");
                }
                else {
                    toastr.error("An unexpected error occurred. Please try again", "Error");
                }
                
                //if (element) {
                //    $(element).modal('hide');
                //}
            }
        });
    },
        

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
        if (addingNew()) {
            clientAssignments.pop();
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
        if (count > 0) {
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
