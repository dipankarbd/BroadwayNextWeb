
infuser.defaults.templateSuffix = ".html";
infuser.defaults.templateUrl = "./Templates/EndUser/Vendor";


//toastr.options.timeOut = 3000;

ko.applyBindings(bn.vmVendorList);
ko.applyBindings(bn.vmDocuments, document.getElementById("tabs-5"));
ko.applyBindings(bn.vmContactList, document.getElementById("tabs-6"));
ko.applyBindings(bn.vmShipToList, document.getElementById("tabs-7"));
ko.applyBindings(bn.vmFeedbackList, document.getElementById("tabs-10"));
ko.applyBindings(bn.vmTerminationList, document.getElementById("tabs-11"));
ko.applyBindings(bn.vmNoteList, document.getElementById("tabs-12"));