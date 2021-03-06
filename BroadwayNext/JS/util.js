﻿var bn = bn || {};




bn.config = (function () {
    var
        self = this,
        phoneMask = '(999) 999-9999';

    return {
        phoneMask: phoneMask
    };

}());



bn.utils = (function () {
    var
        self = this,
        validateObservable = function (itemToValidte, viewModel, data, event) {     //data == the editingEntity()
            //console.log("inside validateObservable -- For : " + itemToValidte);
            for (var prop in data) {
                if (prop === itemToValidte) {
                    var theObservable = data[prop];
                    //theObservable.valueHasMutated();
                    ko.validation.validateObservable(theObservable);
                    if (theObservable.error) {
                        viewModel.modelIsValid(false);
                        //toastr.warning(prop + " is required", "Required Field");
                    }
                    else {
                        if (!(viewModel.modelIsValid())) {
                            var errors = ko.utils.unwrapObservable(ko.validation.group(data));
                            viewModel.modelIsValid(errors.length < 1);
                        }
                    }
                }
            }
            return true;
        },

        onFileUpload = function (element, options, onSuccess, onError, data, event) {

            console.log('inside onFileUpload >> ' + element);


            var api = siteRoot + '/Upload/UploadFile';
            $(element).fileupload({
                url: api,
                //dropZone: $('#dropzone'),
                sequentialUploads: false,
                //formData: options.formData ? options.formData : null,
                //multipart: false,

                //singleFileUploads: false,
                //limitMultiFileUploads: 3,
                //acceptFileTypes: /(pdf)|(doc)|(docx)|(rar)|(wmv)$/i,  //disable --> until "Cancel" is fixed in upload template
                maxChunkSize: 2000000,   // 3MB
                autoUpload: true,
                maxNumberOfFiles: options.maxNumberOfFiles || 1,
                maxFileSize: options.maxFileSize || 10000000 // 10MB,

            });

            $(element)
            .bind('fileuploaddone', function (e, data) {
                console.log('>> FILE UPLOAD DONE <<');
                onSuccess(e, data);
                //def.resolve();
            })
            .bind('fileuploadfail', function (e, data) {
                console.log('Upload FAILED');
                onerror(e, data);
            });
            //.bind('fileuploadstop', function (e) {
            //    console.log('Upload Stopped');
            //    onStopped(e);

            //})


            //$('#fileupload')
            //.on('fileuploadadd', function (e, data) {
            //    //console.log('inside uploadAdd');

            //})
            //.bind('fileuploadsubmit', function (e, data) { /* ... */ })
            //.bind('fileuploadsend', function (e, data) { /* ... */ })
            //.bind('fileuploaddone', function (e, data) { /* ... */ })
            //.bind('fileuploadfail', function (e, data) { /* ... */ })
            //.bind('fileuploadalways', function (e, data) { /* ... */ })
            //.bind('fileuploadprogress', function (e, data) { /* ... */ })
            //.bind('fileuploadprogressall', function (e, data) { /* ... */ })
            //.bind('fileuploadstart', function (e) { /* ... */ })
            //.bind('fileuploadstop', function (e) { /* ... */ })
            //.bind('fileuploadchange', function (e, data) { /* ... */ })
            //.bind('fileuploadpaste', function (e, data) { /* ... */ })
            //.bind('fileuploaddrop', function (e, data) { /* ... */ })
            //.bind('fileuploaddragover', function (e) { /* ... */ });

        };
    return {
        validateObservable: validateObservable,
        onFileUpload: onFileUpload
    };

}());
