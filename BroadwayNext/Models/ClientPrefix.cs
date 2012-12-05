using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BroadwayNextWeb.Models
{
    public class ClientPrefix
    {
        public System.Guid ClientPrefixID { get; set; }
        public System.Guid ClientID { get; set; }
        public string Prefix { get; set; }
        public string BrandName { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        [ScriptIgnore]
        public virtual Client Client { get; set; }
    }
}
