var bn = bn || {};

bn.vmWorkOrderAttachmentList = (function ($, bn, undefined) {
    var
        self = this,
        ClientId = ko.observable(), 


        selectedWorkOrderAttachment = ko.observable(),
        addingDocument = ko.observable(),
        editingDocument = ko.observable(),
        ClientFile = {},
        totalWorkOrderAttachments = ko.observable(),
        WorkOrderAttachments = ko.observableArray([]),
        Divisions = ko.observableArray([]),
        documentTypes = ko.observableArray([]),
        selectedDocumentType = ko.observable(),

        //flag
        validFileUploaded = ko.observable(false),   //this flag will enable/disable the 'Save'

        addDocument = function (element) {
            console.log('Inside Add Document for Client >> ' + ClientId());
            var cDoc = new bn.ClientDocument({});
            cDoc.ClientID = ClientId();
            cDoc.OrderAttachment = true;           
            addingDocument(cDoc);
        },

        editDocument = function () {

            console.log('Inside Edit Document');
            editingDocument(selectedWorkOrderAttachment());
            ko.editable(editingDocument());
            editingDocument().beginEdit();
        },

        cancelAdd = function (element) {
            console.log('Inside Cancel Add');
            if (ClientFile.FileName) {
                //ToDo : We need to delete any file that was uploaded here...
                if (confirm('If you leave now, any file you that you have uploaded will be deleted, Do you want to proceed?')) {
                    $.when($.ajax(ClientFile.deleteURL, {
                        type: 'GET',
                        contentType: 'application/json'
                    })
                    ).done(
                        function () {
                            console.log('inside Success');
                            toastr.success("Document has been deleted", "Info");
                            if (element) {
                                $(element).modal("hide");
                            }
                        }
                    );
                }
            }
            else {
                if (element) {
                    $(element).modal("hide");
                }
            }
            
        },

        cancelEdit = function (element) {
            editingDocument().rollback();
            if (element) {
                $(element).modal("hide");
                
            }
        },

        emailDocument = function () {
            console.log('Inside Email Document');
            console.log();
            $.ajax('./VendorListing/PrepareDocumentForEmail', {
                data: ko.toJSON({ id: selectedWorkOrderAttachment().DocumentID }),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log(result);
                    if (result.Success === true) {
                        console.log(result.TmpDir);
                        window.open("./Email/NewEmail?tmpDir=" + result.TmpDir, 'Email', 'menubar=no,scrollbars=yes,resizable=yes,width=800,height=600');
                    }
                }
            });
        },

        prepareUpload = function (elements) {
            //var options = {};
            console.log('Inside Prepare UPLOAD >>>>> ');
            if (elements.length > 1) {     //hack to fix afterRender being called twice by KoExternalTemplage engine

                if ($('#clientWOUpload').length) {
                    console.log('found upload control');
                    $('#clientWOUpload').on('click', function (data, event) {
                        //filePath
                        var options = {
                            url: './VendorListing/uploadFile',
                            maxFileSize: 100000000,

                        };
                        bn.utils.onFileUpload('#clientWOUpload', options, onSuccessFileUpload, onErrorFileUpload);
                    });
                }

                //var elementSave = $('#btnSave');
                //if (elementSave.length) {
                //    elementSave.on('click', function (e) {
                //        saveWorkOrderAttachment();
                //        return true;
                //    });
                //}
            }
        },

        onSuccessFileUpload = function (e, data) {
            console.log('== SUCCESS CALLBACK for CLIENT WO ==');

            // Prepare the document Object...
            if (data.result.length) {
                console.log('File => ' + data.result[0].fullname);
                //Prepare the File(Document) Object 
                ClientFile.FileName = data.result[0].fullname;  //this is the UniqueFileName
                ClientFile.DocumentTypeID = selectedDocumentType(); //the selected Combo box Item
                //ClientFile.Note = $('#txtComment').val();    //the Note in Rich Text
                ClientFile.deleteURL = data.result[0].delete_url;   //This will be used if User hits Cancel without saving the Doc

                //set flag to true
                validFileUploaded(true);
            }
        },

        onFileUploadStopped = function () { },

        onErrorFileUpload = function (e, data) {
            //console.log('== FAILED CALLBACK==');
        },

        fetchWorkOrderAttachments = function () {
            if (ClientId()) {
                //console.log('will fetch Client Documents now');
                $.getJSON("./ClientListing/GetClientDocuments", { ClientId: ClientId(), IsWOAttachment: true, pageSize: 10, currentPage: 1 }, function (result) {
                    //=====
                    totalWorkOrderAttachments(result.VirtualRowCount);
                    //Now build the ClientDoc 
                    var mappedClientDocs = ko.utils.arrayMap(result.Data, function (item) {
                        return new bn.ClientDocument(item);
                    });

                    //Get the Client Document Types
                    if (!(documentTypes().length)) {        //if not loaded already
                        getWorkOrderAttachmentTypes();
                    }

                    //Get the Divisions
                    if (!(Divisions().length)) {        //if not loaded already
                        getDivisions();
                    }

                    setDocumentTabCounter(totalWorkOrderAttachments());
                    WorkOrderAttachments([]);
                    return WorkOrderAttachments.push.apply(WorkOrderAttachments, mappedClientDocs);
                });
            }
        },

        getWorkOrderAttachmentTypes = function () {
            $.getJSON("./VendorListing/GetDocumentTypes", function (result) {
                if (result) {
                    var mappedDocTypes = ko.utils.arrayMap(result.Data, function (item) {
                        var docType = {};
                        return docType = {
                            DocumentTypeID: item.DocumentTypeID,
                            DocumentType1: item.DocumentType1
                        };
                    });
                    documentTypes([]);
                    return documentTypes.push.apply(documentTypes, mappedDocTypes);
                }
            });
        },

        getDivisions = function () {
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

        saveAddDocument = function () {
            console.log('>> Inside Client Doc Save handler');
           
            //Now send down the wire...
            $.ajax('./ClientListing/AddClientDocument', {
                data: ko.toJSON({ ClientDoc: addingDocument(), file: ClientFile }),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log('>>> inside success for SaveWorkOrderAttachment');
                    if (result.Success === true) {
                        fetchWorkOrderAttachments();
                        
                        toastr.success("Client document saved successfully", "Success");
                        $("#modal-addWOAttachment").modal("hide");
                    }
                    else {
                        if(result.errMsg){
                            toastr.warning(result.errMsg, "Error");
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }
                    }
                    //-- Reset
                    ClientFile = {};
                    validFileUploaded(false);
                }
            });
        },

        saveEditDocument = function (element, data, event) {

            if (editingDocument()) {
                editingDocument().Document.DocumentTypeID(selectedDocumentType());
                editingDocument().commit();
            }
            $.ajax('./ClientListing/EditClientDocument', {
                data: ko.toJSON({ ClientDoc: editingDocument() }),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log('inside success for EDIT DOC');
                    if (result.Success === true) {
                        fetchWorkOrderAttachments();
                        toastr.success("Client document saved successfully", "Success");
                        if (element)
                            $(element).modal('hide');
                        
                        //$("#modal-editDocument").modal("hide");
                    }
                    else {
                        toastr.error("An unexpected error occurred. Please try again", "Error");
                    }
                }
            });
        },

        deleteDocument = function () {
            if (confirm('Are you sure you want to delete this document?')) {

                $.ajax('./ClientListing/DeleteClientDocument', {
                    data: ko.toJSON({
                        ClientDocumentId: selectedWorkOrderAttachment().ClientDocumentID,
                        documentId: selectedWorkOrderAttachment().DocumentID,
                        fileName: selectedWorkOrderAttachment().Document.FileName
                    }),
                    type: 'POST',
                    contentType: 'application/json',
                    success: function (result) {
                        console.log('inside success for Delete DOC');
                        if (result.Success === true) {
                            fetchWorkOrderAttachments();
                            toastr.success("Client document deleted successfully", "Success");
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }
                    }

                });
            }
        },

        selectWorkOrderAttachment = function (clientDocument) {
            console.log('Client Document selected');
            selectedDocumentType(clientDocument.Document.DocumentTypeID());
            selectedWorkOrderAttachment(clientDocument);
        },

        //subscribe to receive Selected Client ID & Num
        onClientSelectionChanged = function (id, num) {
            if (id) {

                //Get the Client Document Types
                if (!(documentTypes().length)) {        //if not loaded already
                    getWorkOrderAttachmentTypes();
                }

                if (!(Divisions().length)) {        //if not loaded already
                    getDivisions();
                }

                ClientId(id);
                //ClientNum = num;
                fetchWorkOrderAttachments();    //Re-load on valid ID  
            }
            else {
                setDocumentTabCounter();
            }
            //Reset selection so all commands['Edit', 'Delete' etc] that depends on selected() gets Reset
            selectedWorkOrderAttachment(undefined);
        },

        setDocumentTabCounter = function (counter) {
            //set the Tab counter
            var tabName = 'Work Order Attachments';
            if (counter > 0) {
                tabName = tabName + ' (' + counter + ')';
            }
            $('#tabsClientListing li:eq(10) a').html(tabName);
        },

        editClient = function () {
            amplify.publish("EditClient");
        };



    return {

        addDocument: addDocument,
        editDocument: editDocument,
        validFileUploaded: validFileUploaded,

        saveAddDocument: saveAddDocument,
        saveEditDocument: saveEditDocument,
        deleteDocument: deleteDocument,

        cancelAdd: cancelAdd,
        cancelEdit: cancelEdit,

        addingDocument: addingDocument,
        editingDocument: editingDocument,
        emailDocument: emailDocument,

        prepareUpload: prepareUpload,


        totalWorkOrderAttachments: totalWorkOrderAttachments,
        ClientId: ClientId,

        selectedWorkOrderAttachment: selectedWorkOrderAttachment,
        selectedDocumentType: selectedDocumentType,
        documentTypes: documentTypes,

        fetchWorkOrderAttachments: fetchWorkOrderAttachments,

        editClient: editClient,
        onClientSelectionChanged: onClientSelectionChanged,
        WorkOrderAttachments: WorkOrderAttachments,
        Divisions:Divisions,
        selectWorkOrderAttachment: selectWorkOrderAttachment,


        onSuccessFileUpload: onSuccessFileUpload,
        onErrorFileUpload: onErrorFileUpload,
        onFileUploadStopped: onFileUploadStopped
    };
})(jQuery, bn);

$(function () {
    //Set up subscription
    amplify.subscribe("ClientSelectionChanged", function (vID, vNum) {
        //console.log(vID);
        bn.vmWorkOrderAttachmentList.onClientSelectionChanged(vID, vNum);
    });

    bn.vmWorkOrderAttachmentList.fetchWorkOrderAttachments();
});