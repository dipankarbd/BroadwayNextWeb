var bn = bn || {};

bn.ClientInstruction = function (data) {
    var self = this;
    self.ClientInstructionsID = ko.observable(data.ClientInstructionsID);
    self.ClientID = data.ClientID;
    self.Clinum = data.Clinum;    
    self.InstructionType = ko.observable(data.InstructionType);
    self.DivisionID = ko.observable(data.DivisionID);
    if (data.Division)
        self.Code = ko.observable(data.Division.Code);
    self.Trades = ko.observable(data.Trades);
    self.Notes = ko.observable(data.Notes);
    self.ActiveType = ko.observable(data.ActiveType);
    self.InputDate = ko.observable(moment(data.InputDate).toDate());
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YYYY");
    self.InputBy = ko.observable(data.InputBy);
    self.LastModifiedDate = ko.observable(moment(data.LastModifiedDate).toDate());
    self.LastModifiedBy = ko.observable(data.LastModifiedBy);

    self.IsActive = ko.computed(function () {
        if (self.ActiveType() === 'true') return 'Yes';
        else return 'No';
    });

};


bn.ClientDivison = function (data) {
    var self = this;
    self.DivisionID = ko.observable(data.DivisionID);
    self.Code = ko.observable(data.Code);
};

bn.vmClientInstructionList = (function ($, bn, undefined) {
    var
        self = this,
        ClientID = ko.observable("5A97EAA0-9DF0-4E3A-A0C2-58CDBD65B6F8"),
        clientNum,
        instructions = ko.observableArray([]),
        Divisions = ko.observableArray([]),
        totalInstructions = ko.observable(0),

        instructionsGridPageSize = ko.observable(10),
        instructionsGridTotalPages = ko.observable(0),
        instructionsGridCurrentPage = ko.observable(1),


        fetchInstructions = function () {
            if (ClientID()) {
                console.log('will fetch Instruction now');
                $.getJSON("./ClientListing/GetClientInstructions", { ClientID: ClientID(), pageSize: instructionsGridPageSize(), currentPage: instructionsGridCurrentPage() }, function (result) {
                    totalInstructions(result.VirtualRowCount);
                    instructionsGridTotalPages(Math.ceil(result.VirtualRowCount / instructionsGridPageSize()));
                    var mappedInstructions = $.map(result.Data, function (item) { return new bn.ClientInstruction(item); });
                    instructions(mappedInstructions);
                    if (!Divisions().length)    //Load if empty
                        fetchDivision();
                    //set the Tab counter
                    setInstructionTabCounter(totalInstructions());
                });
            }
        },

        fetchDivision = function () {
            $.getJSON("./vendorlisting/GetDivisions", function (result) {
                var mappedDivision = $.map(result.Data, function (item) {
                    return new bn.ClientDivison(item);
                });

                Divisions(mappedDivision);
            });
        },

        InstructionTypes = ["Instruction Type 1", "Instruction Type 2", "Instruction Type 3"],
        Trades = ["Trades 1", "Trades 2", "Trades 3"],

        selectedInstruction = ko.observable(),

        editingInstruction = ko.observable(),

        //makingPublic = ko.observable(),

        selectInstruction = function (instruction) {
            console.log('instruction selected');
            selectedInstruction(instruction);

            //prepareModalDialog();   //prepare the UI dialog
        },

        addNewInstruction = function () {
            console.log('Adding new instruction for client: ' + ClientID());
            editingInstruction(new bn.ClientInstruction({ ClientID: ClientID() }));
            ko.editable(editingInstruction());
            editingInstruction().beginEdit();

            //prepareModalDialog();
            //$("#dialog-instruction").dialog("open");
        },

        prepareModal = function () {
            //$('#dpInputDate').datepicker({ autoclose: true });
            //$('#dpInputDate').datepicker('place');

            // $('#contactphone').mask("(999) 999-9999");
            // $('#contactfax').mask("(999) 999-9999");

        },

        editInstruction = function () {
            console.log('Will edit instruction now');
            editingInstruction(selectedInstruction());
            ko.editable(editingInstruction());
            editingInstruction().beginEdit();

            //$("#dialog-contact").dialog("open");
        },      

        saveInstruction = function () {
            console.log('saving instruction...');           
                editingInstruction().commit();
                $.ajax("./Clientlisting/SaveClientInstruction", {
                    data: ko.toJSON({ instruction: editingInstruction() }),
                    type: "post", contentType: "application/json",
                    success: function (result) {
                        selectedInstruction(undefined);
                        editingInstruction(undefined);
                        if (result.Success === true) {
                            fetchInstructions();
                            toastr.success("Instruction information updated successfully", "Success");
                            $("#modal-instruction").modal("hide");
                        }
                    }
                }); 
        },

        deleteInstruction = function () {
            if (confirm('Are you sure you want to delete this instruction?')) {
                $.ajax("./Clientlisting/DeleteClientInstruction", {
                    data: ko.toJSON({ ID: selectedInstruction().ClientInstructionsID() }),
                    type: "post", contentType: "application/json",
                    success: function (result) {
                        selectedInstruction(undefined);
                        if (result.Success === true) {
                            fetchInstructions();
                            toastr.success("Instruction information deleted successfully", "Success");
                        }
                    }
                });
            }
        },

        editClient = function () {
            amplify.publish("EditClient");
        },

        //subscribe to receive Selected Client ID & Num
        onclientSelectionChanged = function (id, num) {
            if (id) {
                ClientID(id);
                clientNum = num;
                if (id)
                    fetchInstructions();    //Re-load on valid ID  
                if (!Divisions().length)    //Load if empty
                    fetchDivision();
            }

            selectedInstruction(undefined);
            //console.log(clientID() + " -- " + vendorNum);
        },

        cancelEdit = function () {
            editingInstruction().rollback();
            $("#modal-instruction").modal("hide");

        },
                
         
        setInstructionTabCounter = function (count) {
            //set the Tab counter
            var tabName = 'Instructions';
            if (count && count > 0) {
                tabName = tabName + ' (' + count + ')';
            }
            $('#tabsClientListing li:eq(6) a').html(tabName);

        };

    return {

        fetchInstructions: fetchInstructions,
        addNewInstruction: addNewInstruction,
        editInstruction: editInstruction,       
        saveInstruction: saveInstruction,
        deleteInstruction: deleteInstruction,
        cancelEdit: cancelEdit,      


        selectInstruction: selectInstruction,
        editingInstruction: editingInstruction,       
        selectedInstruction: selectedInstruction,
        clientSelectionChanged: onclientSelectionChanged,

        InstructionTypes: InstructionTypes,
        Divisions:Divisions,
        Trades:Trades,
        ClientID: ClientID,
        instructions: instructions,
        
        totalInstructions: totalInstructions,
        instructionsGridPageSize: instructionsGridPageSize,
        instructionsGridTotalPages: instructionsGridTotalPages,
        instructionsGridCurrentPage: instructionsGridCurrentPage,
        editClient: editClient,
        prepareModal: prepareModal

    };


})(jQuery, bn);



$(function () {

    //Set up subscription
    amplify.subscribe("ClientSelectionChanged", function (cID, cNum) {
        //console.log(vID);
        bn.vmClientInstructionList.clientSelectionChanged(cID, cNum);
    });

    bn.vmClientInstructionList.fetchInstructions();
});
