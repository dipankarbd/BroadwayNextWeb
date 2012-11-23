using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ClientManager
    {
        public System.Guid ClientManagerID { get; set; }
        public System.Guid ClientID { get; set; }
        public System.Guid Title { get; set; }
        public string Division { get; set; }
        public string Operator { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        public virtual Client Client { get; set; }
    }
}
