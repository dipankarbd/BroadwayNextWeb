var bn = bn || {};



bn.Document = function (data) {
    var self = this;
    self.DocumentTypeID = ko.observable(data.DocumentTypeID);

    var fileExt = data.FileExtension.toString();
    self.FileExtension = fileExt.substr(fileExt.indexOf('.') + 1).toUpperCase();

    self.FileName = data.FileName;
    var fName = data.FileName.toString();
    //this.FileName.substring(this.FileName.indexOf('@') + 1, this.FileName.lastIndexOf('.'))
    self.formattedName = fName.substring(fName.indexOf('@') + 1, fName.lastIndexOf('.'));

    //self.Comment = ko.observable(data.Comment);
    //public --
    self.InputDate = ko.observable(moment(data.InputDate).toDate());
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YYYY");

    self.InputBy = data.InputBy;
    self.RecordNumber = data.RecordNumber;

};

bn.VendorDocument = function (data) {

    var self = this;
    self.DocumentID = ko.observable(data.DocumentID);
    self.VendorDocumentID = ko.observable(data.VendorDocumentID);
    self.VendorID = ko.observable(data.VendorID);

    self.InputDate = ko.observable(moment(data.InputDate).toDate());
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YYYY");

    self.Note = ko.observable(data.Note);
    self.Public = ko.observable(data.Public);

    //self.Document = ko.observable(new bn.Document(data.Document));
    if(data.Document){
        self.Document = new bn.Document(data.Document);
    }

    self.Public = ko.observable(data.Public);
}


bn.vmDocuments = (function ($, bn, undefined) {
    var
        self = this,
        vendorId = ko.observable(), //'e7de3974-4f25-407b-a42b-48b2abe016bd'
        vendorNum,

        //------
        selectedVendorDocument = ko.observable(),
        addingDocument = ko.observable(),
        editingDocument = ko.observable(),
        vendorFile = {},
        totalVendorDocuments = ko.observable(),
        vendorDocuments = ko.observableArray([]),

        //for Document Type DropDown
        //_docTypes = ([]),
        documentTypes = ko.observableArray([]),
        selectedDocumentType = ko.observable(),

        rte,

        addDocument = function (element) {

            console.log('Inside Add Document for Vendor >> ' + vendorId());
            //======== 
            var vDoc = new bn.VendorDocument({});
            vDoc.VendorID = vendorId();
            addingDocument(vDoc);
            //===========
        },

        editDocument = function () {

            console.log('Inside Edit Document');
            editingDocument(selectedVendorDocument());
            ko.editable(editingDocument());
            editingDocument().beginEdit();
        },

        cancelAdd = function (element) {
            //console.log('Inside Cancel Add');
            //if (vendorFile.FileName) {
            //    //ToDo : We need to delete any file that was uploaded here...
            //    if (confirm('If you leave now, any file you that you have uploaded will be deleted, Do you want to proceed?')) {
            //        $.when($.ajax(vendorFile.deleteURL, {
            //            //data: ko.toJSON({
            //            //    vendorDocumentId: selectedVendorDocument().VendorDocumentID(),
            //            //    documentId: selectedVendorDocument().DocumentID,
            //            //    fileName: selectedVendorDocument().Document.FileName
            //            //}),
            //            type: 'POST',
            //            contentType: 'application/json'
            //            //success: function (result) {
            //            //    console.log('inside success for Delete DOC');
            //            //    if (result.Success === true) {
            //            //        fetchVendorDocuments();
            //            //        toastr.success("Document has been deleted", "Info");
            //            //    }
            //            //    else {
            //            //        toastr.error("An unexpected error occurred. Please try again", "Error");
            //            //    }
            //            //    vendorFile = {};    //reset
            //            //}
            //        })
            //        ).then(function (result) {
            //            console.log('inside return');
            //            toastr.success("Document has been deleted", "Info");
            //            //Now hide the Modal
            //            if (element) {
            //                $(element).modal("hide");
            //            }
            //        });
            //    }
            //}
            
            //TEMP
            if (element) {
                $(element).modal("hide");
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
            $.ajax('/VendorListing/PrepareDocumentForEmail', {
                data: ko.toJSON({ id: selectedVendorDocument().DocumentID() }),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log(result);
                    if (result.Success === true) {
                        console.log(result.TmpDir);
                        window.open("/Email/NewEmail?tmpDir=" + result.TmpDir, 'Email', 'menubar=no,scrollbars=yes,resizable=yes,width=800,height=600');
                    }
                }

            });
        },

        prepareUpload = function (elements) {
            //var options = {};
            console.log('Inside Prepare UPLOAD >>>>> ');
            if (elements.length > 1) {     //hack to fix afterRender being called twice by KoExternalTemplage engine

                //if ($('#txtComment').length){
                //    console.log('found the Element');
                //    //rte = new $('#txtComment').wysihtml5({
                //    //    "font-styles": false, //Font styling, e.g. h1, h2, etc. Default true
                //    //    "font-size": true, // Font size e.g. small, large 
                //    //    "emphasis": true, //Italics, bold, etc. Default true                
                //    //    "lists": false, //(Un)ordered lists, e.g. Bullets, Numbers. Default true
                //    //    "html": false, //Button which allows you to edit the generated HTML. Default false
                //    //    "link": false, //Button to insert a link. Default true
                //    //    "image": false, //Button to insert an image. Default true,
                //    //    "color": true, //Button to change color of font  

                //    //    "stylesheets": ["../Content/css/wysiwyg-color.css"]

                //    //}).data("wysihtml5").editor;
                //}

                if ($('#docUpload').length) {
                    console.log('found upload control');
                    $('#docUpload').on('click', function (data, event) {
                        //filePath
                        var options = {
                            url: 'VendorListing/uploadFile',
                            maxFileSize: 100000000,
                            //maxNumberOfFiles: 3,
                            //formData: {
                            //    example: 'test',
                            //    fileSavePath: '/Eamil/Temp/'
                            //}
                        };
                        bn.utils.onFileUpload('#docUpload', options, onSuccessFileUpload, onErrorFileUpload);
                    });
                }
                
                var elementSave = $('#btnSave');
                if(elementSave.length){
                    elementSave.on('click', function (e) {
                        saveVendorDocument();
                        return true;
                    });
                }

                //Get the Vendor Document Types
                if (!(documentTypes.length)) {        //if not loaded already
                    getVendorDocumentTypes();
                }
            }
        },

        onSuccessFileUpload = function (e, data) {
            console.log('== SUCCESS CALLBACK==');

            // Prepare the document Object...
            if (data.result.length) {
                console.log('File => ' + data.result[0].fullname);
                //Prepare the File(Document) Object 
                vendorFile.FileName = data.result[0].fullname;  //this is the UniqueFileName
                vendorFile.DocumentTypeID = selectedDocumentType(); //the selected Combo box Item
                //vendorFile.Note = $('#txtComment').val();    //the Note in Rich Text
                vendorFile.deleteURL = data.result[0].delete_url;   //This will be used if User hits Cancel without saving the Doc
                
                //TO DO 
                //Clear session after Upload so that files don't get appended. => Being done at the Controller
                

            }
        },

        onFileUploadStopped = function () { },

        onErrorFileUpload = function (e, data) {
            //console.log('== FAILED CALLBACK==');
        },

        fetchVendorDocuments = function () {
            if (vendorId()) {
                //console.log('will fetch Vendor Documents now');
                $.getJSON("/VendorListing/GetVendorDocuments", { vendorId: vendorId(), pageSize: 10, currentPage: 1 }, function (result) {
                    //=====
                    totalVendorDocuments(result.VirtualRowCount);
                    //Now build the VendorDoc 
                    var mappedVendorDocs = ko.utils.arrayMap(result.Data, function (item) {
                        return new bn.VendorDocument(item);
                    });
                    setDocumentTabCounter(totalVendorDocuments());
                    vendorDocuments([]);
                    return vendorDocuments.push.apply(vendorDocuments, mappedVendorDocs);
                });
            }
        },

        getVendorDocumentTypes = function () {
            $.getJSON("/VendorListing/GetDocumentTypes", function (result) {
                if (result) {
                    var mappedDocTypes = ko.utils.arrayMap(result, function (item) {
                        var docType = {};
                        return docType = {
                            DocumentTypeID: item.DocumentTypeID,
                            DocumentType1: item.DocumentType1
                        }
                        //return docType;
                    });
                    documentTypes([]);
                    return documentTypes.push.apply(documentTypes, mappedDocTypes);
                }
            });
            //console.log("Length: " + _docTypes.length);
        },

        saveAddDocument = function () {
            console.log('>> Inside Vendor Doc Save handler');
            //var vndDoc = {};
            //prepare the mock data
            //vendorFile.Comment = $('#txtComment').val();

            //Now send down the wire...
            $.ajax('/VendorListing/AddVendorDocument', {
                data: ko.toJSON({ vendorDoc: addingDocument(), file: vendorFile }),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log('>>> inside success for SaveVendorDocument');
                    if (result.Success === true) {
                        fetchVendorDocuments();
                        toastr.success("Vendor document saved successfully", "Success");
                        $("#modal-addDocument").modal("hide");
                    }
                    else {
                        toastr.error("An unexpected error occurred. Please try again", "Error");
                    }
                }

            });
        },

        saveEditDocument = function (element, data, event) {

            if(editingDocument()){
                editingDocument().commit();
            }
            $.ajax('/VendorListing/EditVendorDocument', {
                data: ko.toJSON({vendorDoc: editingDocument()}),
                type: 'POST',
                contentType: 'application/json',
                success: function (result) {
                    console.log('inside success for EDIT DOC');
                    if (result.Success === true) {
                        fetchVendorDocuments();
                        toastr.success("Vendor document saved successfully", "Success");
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

                $.ajax('/VendorListing/DeleteVendorDocument', {
                    data: ko.toJSON({
                        vendorDocumentId: selectedVendorDocument().VendorDocumentID(),
                        documentId: selectedVendorDocument().DocumentID,
                        fileName: selectedVendorDocument().Document.FileName
                    }),
                    type: 'POST',
                    contentType: 'application/json',
                    success: function (result) {
                        console.log('inside success for Delete DOC');
                        if (result.Success === true) {
                            fetchVendorDocuments();
                            toastr.success("Vendor document deleted successfully", "Success");
                        }
                        else {
                            toastr.error("An unexpected error occurred. Please try again", "Error");
                        }
                    }

                });
            }
        },

        selectVendorDocument = function (vendorDocument) {
            console.log('Vendor Document selected');
            selectedVendorDocument(vendorDocument);
        },

        //subscribe to receive Selected Vendor ID & Num
        onVendorSelectionChanged = function (id, num) {
            if (id) {
                vendorId(id);
                vendorNum = num;
                fetchVendorDocuments();    //Re-load on valid ID  
            }
            else {
                setDocumentTabCounter();
            }
            //console.log(vendorId() + " -- " + vendorNum);
        },

        setDocumentTabCounter = function (counter) {
            //set the Tab counter
            var tabName = 'Documents';
            if (counter > 0) {
                tabName = tabName + ' (' + counter + ')';
            }
            $('#tabstwo li:eq(4) a').html(tabName);
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


        totalVendorDocuments: totalVendorDocuments,
        vendorId: vendorId,

        selectedVendorDocument: selectedVendorDocument,
        selectedDocumentType: selectedDocumentType,
        documentTypes: documentTypes,

        fetchVendorDocuments: fetchVendorDocuments,


        onVendorSelectionChanged: onVendorSelectionChanged,
        vendorDocuments: vendorDocuments,
        selectVendorDocument: selectVendorDocument,



        onSuccessFileUpload: onSuccessFileUpload,
        onErrorFileUpload: onErrorFileUpload,
        onFileUploadStopped: onFileUploadStopped
    };
})(jQuery, bn);

$(function () {
    //Set up subscription
    amplify.subscribe("VendorSelectionChanged", function (vID, vNum) {
        //console.log(vID);
        bn.vmDocuments.onVendorSelectionChanged(vID, vNum);
    });
});
