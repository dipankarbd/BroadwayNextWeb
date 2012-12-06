using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ClientContact
    {
        public System.Guid ClientContactID { get; set; }
        public System.Guid ClientID { get; set; }
        public string Clinum { get; set; }
        public string Lastname { get; set; }
        public string Firstname { get; set; }
        public string Initial { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Country { get; set; }
        public string Province { get; set; }
        public string Phone { get; set; }
        public string PhoneExt { get; set; }
        public string Fax { get; set; }
        public string Pager { get; set; }
        public string Mobile { get; set; }
        public string Title { get; set; }
        public string Salutation { get; set; }
        public string ContactType { get; set; }
        public string Email { get; set; }
        public string Website { get; set; }
        public string Notes { get; set; }
        public string ReferBy { get; set; }
        public Nullable<bool> ActiveType { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        public virtual Client Client { get; set; }
    }
}
