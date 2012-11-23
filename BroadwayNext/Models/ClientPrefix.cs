using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ClientPrefix
    {
        public System.Guid ClientPrefixID { get; set; }
        public System.Guid ClientID { get; set; }
        public System.Guid LocationID { get; set; }
        public string Company { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        public virtual Client Client { get; set; }
    }
}
