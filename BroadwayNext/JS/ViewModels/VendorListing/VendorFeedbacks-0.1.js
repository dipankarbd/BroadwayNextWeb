var bn = bn || {};


bn.VendorFeedback = function (data) {
    var self = this;
    self.VendorFeedbackID = ko.observable(data.VendorFeedbackID);
    self.VendorID = ko.observable(data.VendorID);
    self.FeedbackSubject = ko.observable(data.FeedbackSubject);
    self.Feedback = ko.observable(data.Feedback);
    self.Ratings = ko.observable(data.Ratings);
    self.InputDate = ko.observable(moment(data.InputDate).toDate());
    self.InputDate.formatted = moment(data.InputDate).format("MM/DD/YYYY");
    self.InputBy = ko.observable(data.InputBy);
    self.LastModifiedDate = ko.observable(moment(data.LastModifiedDate).toDate());
    self.LastModifiedBy = ko.observable(data.LastModifiedBy);
   

};

bn.vmFeedbackList = (function ($, bn, undefined) {
    var
        self = this,
        vendorId = ko.observable(),
        feedbacks = ko.observableArray([]),

        totalFeedbacks = ko.observable(0),

        feedbacksGridPageSize = ko.observable(10),
        feedbacksGridTotalPages = ko.observable(0),
        feedbacksGridCurrentPage = ko.observable(1),



        fetchFeedbacks = function () {
            if (vendorId()) {
                console.log('will fetch feedback now');
                $.getJSON("/vendorlisting/GetVendorFeedbacks", { vendorId: vendorId(), pageSize: feedbacksGridPageSize(), currentPage: feedbacksGridCurrentPage() }, function (result) {
                    totalFeedbacks(result.VirtualRowCount);
                    feedbacksGridTotalPages(Math.ceil(result.VirtualRowCount / feedbacksGridPageSize()));
                    var mappedFeedbacks = $.map(result.Data, function (item) { return new bn.VendorFeedback(item); });
                    feedbacks(mappedFeedbacks);

                    //set the Tab counter
                    setFeedbackTabCounter(totalFeedbacks());
                });
            }
        },
        
        

        selectedFeedback = ko.observable(),

        editingFeedback = ko.observable(),


        selectFeedback = function (feedback) {
            console.log('Feedback selected');
            selectedFeedback(feedback);

            //prepareModalDialog();   //prepare the UI dialog
        },

        addNewFeedback = function () {
            console.log('Adding new Feedback for vendor: ' + vendorId());
            editingFeedback(new bn.VendorFeedback({ VendorID: vendorId() }));
            ko.editable(editingFeedback());
            editingFeedback().beginEdit();

            
        },

        prepareModal = function () {
            //$('#dpInputDate').datepicker({ autoclose: true });
            //$('#dpInputDate').datepicker('place');

            // $('#contactphone').mask("(999) 999-9999");
            // $('#contactfax').mask("(999) 999-9999");
                       
        },

        editFeedback = function () {
            console.log('Will edit Feedback now');
            editingFeedback(selectedFeedback());
            ko.editable(editingFeedback());
            editingFeedback().beginEdit();

            //$("#dialog-contact").dialog("open");
        },

        saveFeedback = function () {
            console.log('saving Feedback...');
            editingFeedback().commit();

            $.ajax("/vendorlisting/SaveVendorFeedback", {
                data: ko.toJSON({ feedback: editingFeedback() }),
                type: "post", contentType: "application/json",
                success: function (result) {
                    selectedFeedback(undefined);
                    editingFeedback(undefined);
                    if (result.Success === true) {
                        fetchFeedbacks();
                        toastr.success("Feedback information updated successfully", "Success");
                        $("#modal-feedback").modal("hide");

                    }
                }
            });
        },
        deleteFeedback = function () {
            if (confirm('Are you sure you want to delete this Feedback?')) {
                $.ajax("/vendorlisting/DeleteVendorFeedback", {
                    data: ko.toJSON({ feedback: selectedFeedback() }),
                    type: "post", contentType: "application/json",
                    success: function (result) {
                        selectedFeedback(undefined);
                        if (result.Success === true) {
                            fetchFeedbacks();
                            toastr.success("Feedback information deleted successfully", "Success");
                        }
                    }
                });
            }
        },

        editVendor = function () {
            amplify.publish("EditVendor");
        },

        //subscribe to receive Selected Vendor ID & Num
        onVendorSelectionChanged = function (id, num) {
            if (id) {
                vendorId(id);
                vendorNum = num;
                if (id)
                    fetchFeedbacks();    //Re-load on valid ID  
            }

            selectedFeedback(undefined);

            //console.log(vendorId() + " -- " + vendorNum);
        },

        cancelEdit = function () {
            editingFeedback().rollback();
            $("#modal-feedback").modal("hide");

        },

        setFeedbackTabCounter = function (count) {
            //set the Tab counter
            var tabName = 'Feedback';
            if (count && count > 0) {
                tabName = tabName + ' (' + count + ')';
            }
            $('#tabstwo li:eq(9) a').html(tabName);

        };

    return {

        fetchFeedbacks: fetchFeedbacks,
        addNewFeedback: addNewFeedback,
        editFeedback: editFeedback,
        saveFeedback: saveFeedback,
        deleteFeedback: deleteFeedback,
        cancelEdit: cancelEdit,

        selectFeedback: selectFeedback,
        editingFeedback: editingFeedback,
        selectedFeedback: selectedFeedback,
        vendorSelectionChanged: onVendorSelectionChanged,

       
        vendorId: vendorId,
        feedbacks: feedbacks,


        totalFeedbacks: totalFeedbacks,
        feedbacksGridPageSize: feedbacksGridPageSize,
        feedbacksGridTotalPages: feedbacksGridTotalPages,
        feedbacksGridCurrentPage: feedbacksGridCurrentPage,
        editVendor: editVendor,
        prepareModal: prepareModal

    };


})(jQuery, bn);



$(function () {

    //Set up subscription
    amplify.subscribe("VendorSelectionChanged", function (vID, vNum) {
        console.log(vID);
        bn.vmFeedbackList.vendorSelectionChanged(vID, vNum);

    });

    bn.vmFeedbackList.fetchFeedbacks();
    
});
