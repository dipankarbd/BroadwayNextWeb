using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class ClientNotification
    {
        public System.Guid NotificationID { get; set; }
        public System.Guid ClientID { get; set; }
        public System.Guid DivisionID { get; set; }
        public string Email { get; set; }
        public string CalendarType { get; set; }
        public Nullable<System.DateTime> InputDate { get; set; }
        public string InputBy { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public string LastModifiedBy { get; set; }
        public virtual Client Client { get; set; }
        public virtual Division Division { get; set; }
    }
}
