using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BroadwayNextWeb.Models
{
    public class ClientManager
    {
        public System.Guid ClientManagerID { get; set; }
        public System.Guid ClientID { get; set; }
        public System.Guid Title { get; set; }
        public Nullable<System.Guid> DivisionID { get; set; }
        public Nullable<System.Guid> Operator { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        [ScriptIgnore]
        public virtual UserGroup UserGroup { get; set; }
        [ScriptIgnore]
        public virtual Division Division { get; set; }
        [ScriptIgnore]
        public virtual Client Client { get; set; }
    }
}
