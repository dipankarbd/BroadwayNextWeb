using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class State
    {
        public System.Guid StateID { get; set; }
        public string State_Name { get; set; }
        public string Name { get; set; }
        public Nullable<bool> ModifyTax { get; set; }
    }
}
