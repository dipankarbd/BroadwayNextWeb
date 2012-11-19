var bn = bn || {};

bn.VendorNote = function (data) {
    var self = this;
    self.VendorNotesID = ko.observable(data.VendorNotesID);
    self.VendorID = ko.observable(data.VendorID);
    self.NoteType = ko.observable(data.NoteType);
    self.Notes = ko.observable(data.Notes);
    self.MakePublic = ko.observable(data.MakePublic);
    self.InputDate = ko.observable(moment(data.InputDate).toDate());
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YYYY");
    self.InputBy = ko.observable(data.InputBy);
    self.LastModifiedDate = ko.observable(moment(data.LastModifiedDate).toDate());
    self.LastModifiedBy = ko.observable(data.LastModifiedBy);

    self.IsPublic = ko.computed(function () {
        if (self.MakePublic() === 'true') return 'Yes';
        else return 'No';
    });

};

bn.vmNoteList = (function ($, bn, undefined) {
    var
        self = this,
        vendorId = ko.observable(),
        //vendorNum,
        notes = ko.observableArray([]),
        totalNotes = ko.observable(0),

        notesGridPageSize = ko.observable(10),
        notesGridTotalPages = ko.observable(0),
        notesGridCurrentPage = ko.observable(1),



        fetchNotes = function () {
            if (vendorId()) {
                console.log('will fetch note now');
                $.getJSON("/vendorlisting/GetVendorNotes", { vendorId: vendorId(), pageSize: notesGridPageSize(), currentPage: notesGridCurrentPage() }, function (result) {
                    totalNotes(result.VirtualRowCount);
                    notesGridTotalPages(Math.ceil(result.VirtualRowCount / notesGridPageSize()));
                    var mappedNotes = $.map(result.Data, function (item) { return new bn.VendorNote(item); });
                    notes(mappedNotes);

                    //set the Tab counter
                    setNoteTabCounter(totalNotes());
                });
            }
        },


        NoteTypes = ["Type 1", "Type 2", "Type 3"],

        selectedNote = ko.observable(),

        editingNote = ko.observable(),

        makingPublic = ko.observable(),

        selectNote = function (note) {
            console.log('note selected');
            selectedNote(note);

            //prepareModalDialog();   //prepare the UI dialog
        },

        addNewNote = function () {
            console.log('Adding new note for vendor: ' + vendorId());
            editingNote(new bn.VendorNote({ VendorID: vendorId() }));
            ko.editable(editingNote());
            editingNote().beginEdit();

            //prepareModalDialog();
            //$("#dialog-note").dialog("open");
        },

        prepareModal = function () {
            //$('#dpInputDate').datepicker({ autoclose: true });
            //$('#dpInputDate').datepicker('place');

            // $('#contactphone').mask("(999) 999-9999");
            // $('#contactfax').mask("(999) 999-9999");

        },

        editNote = function () {
            console.log('Will edit note now');
            editingNote(selectedNote());
            ko.editable(editingNote());
            editingNote().beginEdit();

            //$("#dialog-contact").dialog("open");
        },
        emailNote = function () {
            console.log('Inside Email Note');
            $.ajax('/VendorListing/PrepareNotesForEmail', {
                data: ko.toJSON({ id: selectedNote().VendorNotesID }),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log(result);
                    if (result.Success === true) {
                        console.log(result.TmpDir);
                        window.open("/Email/NewEmail?tmpDir=" + result.TmpDir + '&body=' + result.Notes, 'Email', 'menubar=no,scrollbars=yes,resizable=yes,width=800,height=600');
                    }
                }

            });
        },
        saveNote = function () {
            console.log('saving note...');
            if (editingNote()) {
                editingNote().commit();

                $.ajax("/vendorlisting/SaveVendorNote", {
                    data: ko.toJSON({ note: editingNote() }),
                    type: "post", contentType: "application/json",
                    success: function (result) {
                        selectedNote(undefined);
                        editingNote(undefined);
                        if (result.Success === true) {
                            fetchNotes();
                            toastr.success("Note information updated successfully", "Success");
                            $("#modal-note").modal("hide");
                        }
                    }
                });
            }
            else {
                makingPublic().commit();

                $.ajax("/vendorlisting/SaveVendorNote", {
                    data: ko.toJSON({ note: makingPublic() }),
                    type: "post", contentType: "application/json",
                    success: function (result) {
                        selectedNote(undefined);
                        makingPublic(undefined);
                        if (result.Success === true) {
                            fetchNotes();
                            toastr.success("Note information updated successfully", "Success");
                            $("#modal-make-public").modal("hide");

                        }
                    }
                });
            }
        },

        deleteNote = function () {
            if (confirm('Are you sure you want to delete this note?')) {
                $.ajax("/vendorlisting/DeleteVendorNote", {
                    data: ko.toJSON({ note: selectedNote() }),
                    type: "post", contentType: "application/json",
                    success: function (result) {
                        selectedNote(undefined);
                        if (result.Success === true) {
                            fetchNotes();
                            toastr.success("Note information deleted successfully", "Success");
                        }
                    }
                });
            }
        },

        editVendor = function () {
            amplify.publish("EditVendor");
        },

        //subscribe to receive Selected Vendor ID & Num
        onVendorSelectionChanged = function (id, num) {
            if (id) {
                vendorId(id);
                vendorNum = num;
                if (id)
                    fetchNotes();    //Re-load on valid ID  
            }

            selectedNote(undefined);
            //console.log(vendorId() + " -- " + vendorNum);
        },

        cancelEdit = function () {
            editingNote().rollback();
            $("#modal-note").modal("hide");

        },

        makesPublic = function () {
            console.log('makes public note>>');
            makingPublic(selectedNote());
            ko.editable(makingPublic());
            makingPublic().beginEdit();

        },


         publicYesNote = function () {
             makingPublic().MakePublic(true);
             saveNote();
         },


          //publicNoNote = function () {
          //    makingPublic().MakePublic(false);
          //    saveNote();

          //},

          cancelMakePublic = function () {
              makingPublic().rollback();
              $("#modal-make-public").modal("hide");
          },

        setNoteTabCounter = function (count) {
            //set the Tab counter
            var tabName = 'Notes';
            if (count && count > 0) {
                tabName = tabName + ' (' + count + ')';
            }
            $('#tabstwo li:eq(11) a').html(tabName);

        };

    return {

        fetchNotes: fetchNotes,
        addNewNote: addNewNote,
        editNote: editNote,
        emailNote: emailNote,
        saveNote: saveNote,
        deleteNote: deleteNote,
        cancelEdit: cancelEdit,
        makesPublic: makesPublic,
        publicYesNote: publicYesNote,
        cancelMakePublic: cancelMakePublic,


        selectNote: selectNote,
        editingNote: editingNote,
        makingPublic: makingPublic,
        selectedNote: selectedNote,
        vendorSelectionChanged: onVendorSelectionChanged,

        NoteTypes: NoteTypes,
        vendorId: vendorId,
        notes: notes,


        totalNotes: totalNotes,
        notesGridPageSize: notesGridPageSize,
        notesGridTotalPages: notesGridTotalPages,
        notesGridCurrentPage: notesGridCurrentPage,
        editVendor: editVendor,
        prepareModal: prepareModal

    };


})(jQuery, bn);



$(function () {

    //Set up subscription
    amplify.subscribe("VendorSelectionChanged", function (vID, vNum) {
        //console.log(vID);
        bn.vmNoteList.vendorSelectionChanged(vID, vNum);

    });

    bn.vmNoteList.fetchNotes();

    ////$('#dialog-contact').on('focus', '#contactphone',function () {
    ////     console.log('found it');
    ////});
    //$("#dialog-contact").dialog({
    //    //autoOpen: false,
    //    //height: 730,
    //    //width: 500,
    //    //modal: false,
    //    create: function (event, ui) {
    //        console.log('tab being created...');
    //        alert("Created");
    //    },
    //    open: function (event, ui) {
    //        console.log('tab being created...');
    //        alert("Created");
    //    }
    //})


});
