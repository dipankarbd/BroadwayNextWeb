
infuser.defaults.templateSuffix = ".html";
infuser.defaults.templateUrl = siteRoot + "/Templates/EndUser/Vendor";


//toastr.options.timeOut = 0;     // 0 makes it sticky
toastr.options.positionClass = 'toast-top-left';

ko.validation.configure({
    registerExtenders: true,    //default is true
    messagesOnModified: false,   //default is true
    insertMessages: false,       //default is true
    parseInputAttributes: true, //default is false
    writeInputAttributes: true, //default is false
    messageTemplate: null,      //default is null
    decorateElement: true       //default is false. Applies the .validationElement CSS class
});

ko.applyBindings(bn.vmVendorList);
ko.applyBindings(bn.vmDocuments, document.getElementById("tabs-5"));
ko.applyBindings(bn.vmContactList, document.getElementById("tabs-6"));
ko.applyBindings(bn.vmShipToList, document.getElementById("tabs-7"));
ko.applyBindings(bn.vmFeedbackList, document.getElementById("tabs-10"));
ko.applyBindings(bn.vmTerminationList, document.getElementById("tabs-11"));
ko.applyBindings(bn.vmNoteList, document.getElementById("tabs-12"));