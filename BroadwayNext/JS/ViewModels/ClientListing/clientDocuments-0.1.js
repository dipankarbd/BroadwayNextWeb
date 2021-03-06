﻿var bn = bn || {};

bn.Document_Client = function (data) {
    var self = this;
    self.DocumentTypeID = ko.observable(data.DocumentTypeID);
    self.DocumentTypeName = function () {
        //console.log('>> ' + self.DocumentTypeID() + ' == ' + bn.vmClientDocumentList.documentTypes().length);
        if (self.DocumentTypeID() && bn.vmClientDocumentList.documentTypes().length) {
            var docType = ko.utils.arrayFirst(bn.vmClientDocumentList.documentTypes(), function (type) {
                return (self.DocumentTypeID() === type.DocumentTypeID);
            });
            if (docType) {
                return docType.DocumentType1.toString();
            }
        }
    };
    var fileExt = data.FileExtension.toString();
    self.FileExtension = fileExt.substr(fileExt.indexOf('.') + 1).toUpperCase();

    self.FileName = data.FileName;
    var fName = data.FileName.toString();
    //this.FileName.substring(this.FileName.indexOf('@') + 1, this.FileName.lastIndexOf('.'))
    self.formattedName = fName.substring(fName.indexOf('@') + 1, fName.lastIndexOf('.'));

    //self.Comment = ko.observable(data.Comment);    
    self.InputDate =moment(data.InputDate).toDate();
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YYYY");

    self.InputBy = ko.observable(data.InputBy);
    self.RecordNumber = ko.observable(data.RecordNumber);
};

bn.ClientDocument = function (data) {

    var self = this;

    //==> No NEED to make these observable cause we don't need to "Observe" them
    //===============================================
    self.DocumentID = data.DocumentID;
    self.ClientDocumentID = data.ClientDocumentID;
    self.ClientID = data.ClientID;
    self.DivisionID = ko.observable( data.DivisionID);
    //self.DivisionText = function () {
    //    if (self.DivisionID() && bn.vmWorkOrderAttachmentList.Divisions().length) {
    //        var _Division = ko.utils.arrayFirst(bn.vmWorkOrderAttachmentList.Divisions(), function (item) {
    //            return (self.DivisionID() === item.DivisionID);
    //        });
    //        if (_Division) {
    //            return _Division.Code.toString();
    //        }
    //    }
    //};
    //===============================================

    self.InputDate = moment(data.InputDate).toDate();
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YYYY");

    self.InputBy = data.InputBy;
    self.Comments = ko.observable(data.Comments);
    self.Public = ko.observable(data.Public);
    self.OrderAttachment = data.OrderAttachment;

    //self.Document = ko.observable(new bn.Document(data.Document));
    if (data.Document) {
        self.Document = new bn.Document_Client(data.Document);
    }
};


bn.vmClientDocumentList = (function ($, bn, undefined) {
    var
        self = this,
        ClientId = ko.observable(),


        selectedClientDocument = ko.observable(),
        addingDocument = ko.observable(),
        editingDocument = ko.observable(),
        ClientFile = {},
        totalClientDocuments = ko.observable(),
        ClientDocuments = ko.observableArray([]),

        documentTypes = ko.observableArray([]),
        selectedDocumentType = ko.observable(),

        //flag
        validFileUploaded = ko.observable(false),   //this flag will enable/disable the 'Save'

        addDocument = function (element) {
            console.log('Inside Add Document for Client >> ' + ClientId());
            //======== 
            var cDoc = new bn.ClientDocument({});
            cDoc.ClientID = ClientId();
            cDoc.OrderAttachment = false;
            addingDocument(cDoc);
            //===========
        },

        editDocument = function () {

            console.log('Inside Edit Document');
            editingDocument(selectedClientDocument());
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
                data: ko.toJSON({ id: selectedClientDocument().DocumentID }),
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

                if ($('#clientDocUpload').length) {
                    console.log('found upload control');
                    $('#clientDocUpload').on('click', function (data, event) {
                        //filePath
                        var options = {
                            url: './VendorListing/uploadFile',
                            maxFileSize: 100000000,
                            
                        };
                        bn.utils.onFileUpload('#clientDocUpload', options, onSuccessFileUpload, onErrorFileUpload);
                    });
                }
               
                //var elementSave = $('#btnSave');
                //if (elementSave.length) {
                //    elementSave.on('click', function (e) {
                //        saveClientDocument();
                //        return true;
                //    });
                //}


            }
        },

        onSuccessFileUpload = function (e, data) {
            console.log('== SUCCESS CALLBACK for CLIENT DOCUMENT==');

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

        fetchClientDocuments = function () {
            if (ClientId()) {
                //console.log('will fetch Client Documents now');
                $.getJSON("./ClientListing/GetClientDocuments", { ClientId: ClientId(), IsWOAttachment: false, pageSize: 10, currentPage: 1 }, function (result) {
                    //=====
                    totalClientDocuments(result.VirtualRowCount);
                    //Now build the ClientDoc 
                    var mappedClientDocs = ko.utils.arrayMap(result.Data, function (item) {
                        return new bn.ClientDocument(item);
                    });
					
					//Get the Client Document Types
                    if (!(documentTypes().length)) {        //if not loaded already
                        getClientDocumentTypes();
                    }	
                    setDocumentTabCounter(totalClientDocuments());
                    ClientDocuments([]);
                    return ClientDocuments.push.apply(ClientDocuments, mappedClientDocs);
                });
            }
        },

        getClientDocumentTypes = function () {
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

        saveAddDocument = function () {
            console.log('>> Inside Client Doc Save handler');
            //Now send down the wire...
            $.ajax('./ClientListing/AddClientDocument', {
                data: ko.toJSON({ ClientDoc: addingDocument(), file: ClientFile }),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log('>>> inside success for SaveClientDocument');
                    if (result.Success === true) {
                        selectedClientDocument(undefined);
                        fetchClientDocuments();
                        toastr.success("Client document saved successfully", "Success");
                        $("#modal-addDocument").modal("hide");
                    }
                    else {
                        if (result.errMsg) {
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
                editingDocument().commit();
            }
            $.ajax('./ClientListing/EditClientDocument', {
                data: ko.toJSON({ ClientDoc: editingDocument() }),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log('inside success for EDIT DOC');
                    if (result.Success === true) {
                        selectedClientDocument(undefined);
                        fetchClientDocuments();
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
                        ClientDocumentId: selectedClientDocument().ClientDocumentID,
                        documentId: selectedClientDocument().DocumentID,
                        fileName: selectedClientDocument().Document.FileName
                    }),
                    type: 'POST',
                    contentType: 'application/json',
                    success: function (result) {
                        console.log('inside success for Delete DOC');
                        if (result.Success === true) {
                            selectedClientDocument(undefined);
                            fetchClientDocuments();
                            toastr.success("Client document deleted successfully", "Success");
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }
                    }

                });
            }
        },

        selectClientDocument = function (clientDocument) {
            console.log('Client Document selected');
            selectedClientDocument(clientDocument);
        },

        //subscribe to receive Selected Client ID & Num
        onClientSelectionChanged = function (id, num) {
            if (id) {

                //Get the Client Document Types
                if (!(documentTypes().length)) {        //if not loaded already
                    getClientDocumentTypes();
                }

                ClientId(id);
                //ClientNum = num;
                fetchClientDocuments();    //Re-load on valid ID  
            }
            else {
                setDocumentTabCounter();
            }
            //Reset selection so all commands['Edit', 'Delete' etc] that depends on selected() gets Reset
            selectedClientDocument(undefined);
        },

        setDocumentTabCounter = function (counter) {
            //set the Tab counter
            var tabName = 'Documents';
            if (counter > 0) {
                tabName = tabName + ' (' + counter + ')';
            }
            $('#tabsClientListing li:eq(8) a').html(tabName);
        },

        editClient = function () {
            amplify.publish("EditClient");
        };



    return {

        addDocument: addDocument,
        editDocument: editDocument,

        saveAddDocument: saveAddDocument,
        saveEditDocument: saveEditDocument,
        deleteDocument: deleteDocument,

        cancelAdd: cancelAdd,
        cancelEdit: cancelEdit,

        addingDocument: addingDocument,
        editingDocument: editingDocument,
        emailDocument: emailDocument,

        prepareUpload: prepareUpload,


        totalClientDocuments: totalClientDocuments,
        ClientId: ClientId,
        validFileUploaded: validFileUploaded,

        selectedClientDocument: selectedClientDocument,
        selectedDocumentType: selectedDocumentType,
        documentTypes: documentTypes,

        fetchClientDocuments: fetchClientDocuments,

        editClient: editClient,
        onClientSelectionChanged: onClientSelectionChanged,
        ClientDocuments: ClientDocuments,
        selectClientDocument: selectClientDocument,


        onSuccessFileUpload: onSuccessFileUpload,
        onErrorFileUpload: onErrorFileUpload,
        onFileUploadStopped: onFileUploadStopped
    };
})(jQuery, bn);

$(function () {
    //Set up subscription
    amplify.subscribe("ClientSelectionChanged", function (vID, vNum) {
        //console.log(vID);
        bn.vmClientDocumentList.onClientSelectionChanged(vID, vNum);
    });

    bn.vmClientDocumentList.fetchClientDocuments();
});