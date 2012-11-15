using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class UserLog
    {
        public System.Guid UserID { get; set; }
        public string Loginname { get; set; }
        public string MachineName { get; set; }
        public string BrowserType { get; set; }
        public string OperatingSystem { get; set; }
        public string IPAddress { get; set; }
        public Nullable<int> ScreenWidth { get; set; }
        public Nullable<int> ScreenHeight { get; set; }
        public System.DateTime LoginDate { get; set; }
        public Nullable<System.DateTime> LogoffDate { get; set; }
    }
}
