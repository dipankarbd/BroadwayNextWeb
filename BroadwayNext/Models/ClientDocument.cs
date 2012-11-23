using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ClientDocument
    {
        public System.Guid ClientDocumentID { get; set; }
        public System.Guid DocumentID { get; set; }
        public System.Guid ClientID { get; set; }
        public Nullable<bool> OrderAttachment { get; set; }
        public Nullable<bool> Public { get; set; }
        public string InputBy { get; set; }
        public System.DateTime InputDate { get; set; }
        public string Comments { get; set; }
        public virtual Client Client { get; set; }
        public virtual Document Document { get; set; }
    }
}
