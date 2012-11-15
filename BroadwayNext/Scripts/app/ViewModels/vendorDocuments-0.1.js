﻿var bn = bn || {};



bn.Document = function (data) {
    var self = this;
    self.DocumentTypeID = ko.observable(data.DocumentTypeID);
    var fileExt = data.FileExtension.toString();
    self.FileExtension = fileExt.substr(fileExt.indexOf('.') + 1).toUpperCase();

    var fName = data.FileName.toString();
    self.FileName = fName.substr(fName.indexOf('@') + 1, fName.lastIndexOf('.'));

    self.Comment = ko.observable(data.Comment);
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


    //self.Document = ko.observable(new bn.Document(data.Document));
    self.Document = new bn.Document(data.Document);

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

        addDocument = function () {

            console.log('Inside Add Document');
            addingDocument({ VendorID: vendorId() });
            ko.editable(addingDocument());
            addingDocument().beginEdit();
        },


        prepareUpload = function () {

            console.log('Inside prepareUpload');
            $('#docUpload').one('click', function (data, event) {
                //filePath
                var options = {
                    url: 'VendorListing/uploadFile',
                    maxFileSize: 100000000,
                    maxNumberOfFiles: 3,
                    formData: {
                        example: 'test',
                        fileSavePath: '/Eamil/Temp/'
                    }
                };

                bn.utils.onFileUpload(this, options, onSuccessFileUpload, onErrorFileUpload, onFileUploadStopped, data, event);

            });
            //Handler for the Save Button to initiate Vendor Document Save process
            $('#btnSave').on('click', function (e) {

                saveVendorDocument();
                return true;
            });
        },

        onSuccessFileUpload = function (e, data) {
            console.log('== SUCCESS CALLBACK==');

            // Prepare the document Object...
            if (data.result.length) {
                console.log('File => ' + data.result[0].fullname);
                vendorFile.FileName = data.result[0].fullname;  //this is the UniqueFileName
                //==
                //selectedVendorDocument().Document = {};
                //selectedVendorDocument().Document.FileName = data.result[0].fullname;;
            }
        },
        onFileUploadStopped = function () { },

        onErrorFileUpload = function (e, data) {
            //console.log('== FAILED CALLBACK==');
        },

        fetchVendorDocuments = function () {
            if (vendorId()) {
                //console.log('will fetch shipto now');
                $.getJSON("/VendorListing/GetVendorDocuments", { vendorId: vendorId(), pageSize: 10, currentPage: 1 }, function (result) {
                    //=====
                    console.log('inside getVendorDoc: ' + result.VirtualRowCount);
                    totalVendorDocuments(result.VirtualRowCount);

                    //Now build the VendorDoc 
                    var mappedVendorDocs = ko.utils.arrayMap(result.Data, function (item) {
                        return new bn.VendorDocument(item);
                    });
                    setDocumentTabCounter(totalVendorDocuments());
                    return vendorDocuments.push.apply(vendorDocuments, mappedVendorDocs);
                });
            }
        },

        saveVendorDocument = function () {

            console.log('>> Inside Vendor Doc Save handler');
            //var vndDoc = {};

            //prepare the mock data
            //vendorFile.Comment = 'Dummy Comment';
            //vndDoc.VendorDocumentID = 'test';
            //vndDoc.DocumentID = 'test';
            //vndDoc.VendorID = 'e7de3974-4f25-407b-a42b-48b2abe016bd';   //4th one

            //Now send down the wire...
            $.ajax('/VendorListing/AddVendorDocument', {
                data: ko.toJSON({ vendorID: vendorId(), file: vendorFile }),
                type: 'post',
                contentType: 'application/json',
                success: function (result) {
                    console.log('>>> inside success for SaveVendorDocument');
                }

            });
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
                if (id)
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

        }

    cancelAdd = function (element) {
        //editingShipTo().rollback();
        if (element) {
            $(element).modal("hide");
        }
    };

    return {
        addDocument: addDocument,
        addingDocument: addingDocument,
        prepareUpload: prepareUpload,
        cancelAdd: cancelAdd,

        totalVendorDocuments: totalVendorDocuments,
        selectedVendorDocument: selectedVendorDocument,
        fetchVendorDocuments: fetchVendorDocuments,
        onVendorSelectionChanged: onVendorSelectionChanged,

        vendorDocuments: vendorDocuments,
        saveVendorDocument: saveVendorDocument,
        selectVendorDocument: selectVendorDocument
    };
})(jQuery, bn);

$(function () {
    //Set up subscription
    amplify.subscribe("VendorSelectionChanged", function (vID, vNum) {
        console.log(vID);
        bn.vmDocuments.onVendorSelectionChanged(vID, vNum);
    });
    //bn.vmDocuments.fetchVendorDocuments();
});