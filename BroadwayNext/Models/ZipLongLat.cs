using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ZipLongLat
    {
        public int ID { get; set; }
        public string Zip { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public Nullable<double> Latitude { get; set; }
        public Nullable<double> Longitude { get; set; }
    }
}