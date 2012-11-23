using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BroadwayNextWeb.Models
{
    public class DocumentType
    {
        public DocumentType()
        {
            this.Documents = new List<Document>();
        }

        public System.Guid DocumentTypeID { get; set; }
        public Nullable<int> RecordNumber { get; set; }
        public string DocumentType1 { get; set; }
        public Nullable<int> BypassApproval { get; set; }
		[ScriptIgnore]
        public virtual ICollection<Document> Documents { get; set; }
    }
}
