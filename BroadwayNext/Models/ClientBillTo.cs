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
        public string Company { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Contact { get; set; }
        public string Email { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public string LastModifiedBy { get; set; }
        public Nullable<bool> ActiveType { get; set; }
        public virtual Client Client { get; set; }
    }
}
