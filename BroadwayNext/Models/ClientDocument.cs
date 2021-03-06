using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BroadwayNextWeb.Models
{
    public class ClientDocument
    {
        public System.Guid ClientDocumentID { get; set; }
        public System.Guid DocumentID { get; set; }
        public Nullable<Guid> DivisionID { get; set; }
        public System.Guid ClientID { get; set; }
        public Nullable<bool> OrderAttachment { get; set; }
        public Nullable<bool> Public { get; set; }
        public string InputBy { get; set; }
        public System.DateTime InputDate { get; set; }
        public string Comments { get; set; }
        public virtual Document Document { get; set; }
        [ScriptIgnore]
        public virtual Client Client { get; set; }
        [ScriptIgnore]
        public virtual Division Division { get; set; }
       
    }
}
