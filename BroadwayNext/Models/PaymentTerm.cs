using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class PaymentTerm
    {
        public System.Guid PaymentTermsID { get; set; }
        public string PaymentTerms { get; set; }
        public string InputBy { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string LastModifiedby { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
    }
}
