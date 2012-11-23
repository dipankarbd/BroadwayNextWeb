using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ClientBillTo
    {
        public System.Guid ClientBillToID { get; set; }
        public System.Guid ClientID { get; set; }
        public string Clinum { get; set; }
        public Nullable<int> DeliveryOptions { get; set; }
        public string Division { get; set; }
        public string BillCompany { get; set; }
        public string BillAddress1 { get; set; }
        public string BillAddress2 { get; set; }
        public string BillCity { get; set; }
        public string BillState { get; set; }
        public string BillZip { get; set; }
        public string BillPhone { get; set; }
        public string BillFax { get; set; }
        public string BillContact { get; set; }
        public string BillEmail { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public string LastModifiedBy { get; set; }
        public Nullable<bool> ActiveType { get; set; }
        public virtual Client Client { get; set; }
    }
}
