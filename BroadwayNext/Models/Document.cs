using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BroadwayNextWeb.Models
{
    public class Document
    {
        public Document()
        {
            this.ClientDocuments = new List<ClientDocument>();
            this.VendorDocuments = new List<VendorDocument>();
        }

        public System.Guid DocumentID { get; set; }
        public Nullable<int> RecordNumber { get; set; }
        public Nullable<System.Guid> DocumentTypeID { get; set; }
        public string FileName { get; set; }
        public string FileExtension { get; set; }
        public Nullable<System.DateTime> DateImported { get; set; }
        public byte[] FileData { get; set; }
        public Nullable<bool> ActiveType { get; set; }
        public string Comment { get; set; }
        public Nullable<bool> Public { get; set; }
        public string InputBy { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string LastModifiedBy { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public string DocumentPath { get; set; }
        [ScriptIgnore]
		public virtual ICollection<ClientDocument> ClientDocuments { get; set; }
        [ScriptIgnore]
		public virtual DocumentType DocumentType { get; set; }
		[ScriptIgnore]
        public virtual ICollection<VendorDocument> VendorDocuments { get; set; }
    }
}
