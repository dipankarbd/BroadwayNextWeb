using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class VendorDocument
    {
        public System.Guid VendorDocumentID { get; set; }
        public System.Guid DocumentID { get; set; }
        public System.Guid VendorID { get; set; }
        public string Note { get; set; }
        public Nullable<bool> Public { get; set; }
        public string InputBy { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public virtual Document Document { get; set; }
        public virtual Vendor Vendor { get; set; }
    }
}
