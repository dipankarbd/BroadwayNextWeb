bn.vmVendorList.to = ko.observable();
bn.vmVendorList.cc = ko.observable();
bn.vmVendorList.bcc = ko.observable();
bn.vmVendorList.pageSize(5);

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
        "stylesheets": ["../Content/wysihtml5/lib/css/wysiwyg-color.css"]
    });

    $('#btnSend').click(function () {
        var data = {
            From: $('#hdnFrom').val(),
            To: $('#to').val(),
            CC: $('#cc').val(),
            BCC: $('#bcc').val(),
            Subject: $('#subject').val(),
            Body: $('#mailbody').val(),
            TmpDir: $('#hdnTmpDir').val(),
            CCSender: $('#ccsender').val()
        };
        $.ajax({
            url: '/email/sendemail',
            type: 'POST',
            dataType: 'json',
            data: JSON.stringify(data),
            contentType: 'application/json; charset=utf-8',
            success: function (result) {
                if (result.success) { alert('email sent'); }
            }
        });
    });
    $('#btnPrintPreview').click(function () {
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
});