using System;
using System.Collections.Generic;

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
        public virtual ICollection<Document> Documents { get; set; }
    }
}
