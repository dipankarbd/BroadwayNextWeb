using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ClientInstruction
    {
        public System.Guid ClientInstructionsID { get; set; }
        public System.Guid ClientID { get; set; }
        public string Clinum { get; set; }
        public string InstructionType { get; set; }
        public string Division { get; set; }
        public string Notes { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public string LastModifiedBy { get; set; }
        public Nullable<bool> ActiveType { get; set; }
        public virtual Client Client { get; set; }
    }
}
