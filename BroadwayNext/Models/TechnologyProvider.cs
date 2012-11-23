using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class TechnologyProvider
    {
        public System.Guid TPID { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
    }
}
