using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class DeliveryOption
    {
        public System.Guid DeliveryID { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> Inputdate { get; set; }
        public string InputBy { get; set; }
    }
}