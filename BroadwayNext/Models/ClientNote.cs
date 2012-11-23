using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ClientNote
    {
        public System.Guid ClientNotesID { get; set; }
        public System.Guid ClientID { get; set; }
        public string NoteType { get; set; }
        public string Notes { get; set; }
        public Nullable<bool> Collection { get; set; }
        public string InputStatus { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public string LastModifiedBy { get; set; }
        public virtual Client Client { get; set; }
    }
}
