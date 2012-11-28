
//infuser.defaults.templateSuffix = ".html";
//infuser.defaults.templateUrl = "./Templates/EndUser/Client";


ko.applyBindings(bn.vmClientList);
//ko.applyBindings(bn.vmClientInstructionList, document.getElementById('#ClientTabs-7'));
ko.applyBindings(bn.vmClientBillTo, document.getElementById("ClientTabs-5"));
ko.applyBindings(bn.vmClientInstructionList, document.getElementById("ClientTabs-7"));
ko.applyBindings(bn.vmClientDocumentList, document.getElementById("ClientTabs-9"));