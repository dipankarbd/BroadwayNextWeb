
//infuser.defaults.templateSuffix = ".html";
//infuser.defaults.templateUrl = "./Templates/EndUser/Client";


ko.applyBindings(bn.vmClientList);
ko.applyBindings(bn.vmClientBillTo, document.getElementById("ClientTabs-3"));
ko.applyBindings(bn.vmClientContact, document.getElementById("ClientTabs-4"));
ko.applyBindings(bn.vmClientInstructionList, document.getElementById("ClientTabs-7"));
ko.applyBindings(bn.vmClientAssignment, document.getElementById("ClientTabs-8"));
ko.applyBindings(bn.vmClientDocumentList, document.getElementById("ClientTabs-9"));
ko.applyBindings(bn.vmWorkOrderAttachmentList, document.getElementById("ClientTabs-11"));
ko.applyBindings(bn.vmClientPrefix, document.getElementById("ClientTabs-10"));
