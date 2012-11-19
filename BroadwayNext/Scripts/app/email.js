bn.vmVendorList.to = ko.observable();
bn.vmVendorList.cc = ko.observable();
bn.vmVendorList.bcc = ko.observable();
bn.vmVendorList.pageSize(5);
bn.vmVendorList.files = [];
bn.vmVendorList.onSuccessFileUpload = function (e, data) {
    console.log('== SUCCESS CALLBACK==');
    if (data.result.length) {
        bn.vmVendorList.files.push({ FileName: data.result[0].name, UniqueFileName: data.result[0].fullname });
    }
};

bn.vmVendorList.onErrorFileUpload = function (e, data) {
    console.log('== FAILED CALLBACK==');
}
bn.vmVendorList.showEmailFinder = ko.observable(false);

amplify.subscribe("VendorSelectionChanged", function (vID, vNum) {
    console.log(bn.vmVendorList.selectedVendor());
});

amplify.subscribe("emaillookup", function (data) {
    console.log(data);
});

ko.applyBindings(bn.vmVendorList);

function loadFormData() {
    bn.vmVendorList.to($('#hdnTO').val());
    bn.vmVendorList.cc($('#hdnCC').val());
    bn.vmVendorList.bcc($('#hdnBCC').val());
}
function openEmailLookup() {
    bn.vmVendorList.loadVendors();
    $('#toLookup').val(bn.vmVendorList.to());
    $('#ccLookup').val(bn.vmVendorList.cc());
    $('#bccLookup').val(bn.vmVendorList.bcc());
    $('#emailLookupModal').modal();
}
$(document).ready(function () {
    loadFormData();

    //existingAttachments
    $.ajax({
        url: '/email/GetAttachments?emailDirectory=' + $('#hdnTmpDir').val(),
        type: 'GET',
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        success: function (result) {
            var i = 0;
            for (i = 0; i < result.length; i++) {
                $('#existingAttachments').append('<li>'+ result[i]+'</li>');
            }
        }
    });

    $('#btnTO').click(function () {
        openEmailLookup();
    });
    $('#btnCC').click(function () {
        openEmailLookup();
    });
    $('#btnBCC').click(function () {
        openEmailLookup();
    });
    $('#mailbody').wysihtml5({
        "font-styles": false, //Font styling, e.g. h1, h2, etc. Default true
        "font-size": true, // Font size e.g. small, large 
        "emphasis": true, //Italics, bold, etc. Default true                
        "lists": false, //(Un)ordered lists, e.g. Bullets, Numbers. Default true
        "html": false, //Button which allows you to edit the generated HTML. Default false
        "link": false, //Button to insert a link. Default true
        "image": false, //Button to insert an image. Default true,
        "color": true, //Button to change color of font  

        "stylesheets": ["../Content/css/wysiwyg-color.css"],
        "events": {
            "load": function () {
                $('.wysihtml5-toolbar').append('<li><div class="btn" id="btnPrintPreview">Print Preview</div></li>');
            }
        }
    });

    $('#btnSend').click(function () {
        $('#btnSend').attr("disabled", "disabled");
        var data = {
            From: $('#hdnFrom').val(),
            To: $('#to').val(),
            CC: $('#cc').val(),
            BCC: $('#bcc').val(),
            Subject: $('#subject').val(),
            Body: $('#mailbody').val(),
            TmpDir: $('#hdnTmpDir').val(),
            CCSender: $('#ccsender').val(),
            Attachments: bn.vmVendorList.files
        };
        //console.log(data); 
        $.ajax({
            url: '/email/sendemail',
            type: 'POST',
            dataType: 'json',
            data: JSON.stringify(data),
            contentType: 'application/json; charset=utf-8',
            success: function (result) {
                if (result.Success === true) {
                    toastr.success("Email sent successfully", "Success");
                }
            }
        });
    });
    $(document).on("click", "#btnPrintPreview", function (event) {
        previewHtml = '';
        previewHtml += 'To: ' + $('#to').val() + '<br/>';
        if (jQuery.trim($('#cc').val()).length > 0) previewHtml += 'CC: ' + + '<br/>';
        if (jQuery.trim($('#bcc').val()).length > 0) previewHtml += 'BCC: ' + $('#bcc').val() + '<br/>';
        if (jQuery.trim($('#subject').val()).length > 0) previewHtml += '<br/>Subject: ' + $('#subject').val() + '<br/><br/>';
        previewHtml += $('#mailbody').val();
        var w = window.open("Print Preview", "#");
        var d = w.document.open();
        d.write('<!DOCTYPE html><html><body>' + previewHtml + '</body></html>');
        d.close();
    });

    $('#btnAddAttachments').click(function () {
        alert('Not Implemented');
    });
    $('#btnRemoveAttachments').click(function () {
        alert('Not Implemented');
    });

    $('#btnAddLookupToMainEmail').click(function () {
        bn.vmVendorList.to($('#toLookup').val());
        bn.vmVendorList.cc($('#ccLookup').val());
        bn.vmVendorList.bcc($('#bccLookup').val());
        $("#emailLookupModal").modal("hide");
    });
    $('#btnToLookup').click(function () {
        var email = bn.vmVendorList.selectedVendor().Email();
        if ($.trim($('#toLookup').val()).length > 0) {
            $('#toLookup').val($('#toLookup').val() + ', ' + email);
        }
        else {
            $('#toLookup').val(email);
        }
    });
    $('#btnCCLookup').click(function () {
        var email = bn.vmVendorList.selectedVendor().Email();
        if ($.trim($('#ccLookup').val()).length > 0) {
            $('#ccLookup').val($('#ccLookup').val() + ', ' + email);
        }
        else {
            $('#ccLookup').val(email);
        }

    });
    $('#btnBCCLookup').click(function () {
        var email = bn.vmVendorList.selectedVendor().Email();
        if ($.trim($('#bccLookup').val()).length > 0) {
            $('#bccLookup').val($('#bccLookup').val() + ', ' + email);
        }
        else {
            $('#bccLookup').val(email);
        }
    });

    $('body').on('click', '#docUpload', function (data, event) {
        //filePath
        var options = {
            //url: '/VendorListing/uploadFile',
            maxFileSize: 100000000,
            maxNumberOfFiles: 3
        };
        console.log('fix click');
        bn.utils.onFileUpload('#docUpload', options, bn.vmVendorList.onSuccessFileUpload,
                                                     bn.vmVendorList.onErrorFileUpload);
        //bn.vmDocuments.onFileUploadStopped, data, event);

    });
    //Handler for the Save Button to initiate Vendor Document Save process
    //$('#modal-addDocument').on('click', '#btnSave', function (e) {
    //    bn.vmDocuments.saveVendorDocument();
    //    return true;
    //});

});