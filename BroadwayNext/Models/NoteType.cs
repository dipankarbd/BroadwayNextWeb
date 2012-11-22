using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BroadwayNextWeb.Models
{
    public class NoteType
    {
        public NoteType()
        {
            this.VendorNotes = new List<VendorNote>();
        }

        public System.Guid NoteTypeID { get; set; }
        public string Description { get; set; }
        public string NoteType1 { get; set; }
        [ScriptIgnore]
        public virtual ICollection<VendorNote> VendorNotes { get; set; }
    }
}
