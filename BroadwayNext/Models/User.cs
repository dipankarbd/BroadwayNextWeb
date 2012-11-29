using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BroadwayNextWeb.Models
{
    public class User
    {        
        public System.Guid UserID { get; set; }
        public string Loginname { get; set; }
        public string Displayname { get; set; }
        public string Lastname { get; set; }
        public string Firstname { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string PrinterDefault { get; set; }
        public string PrinterCheck { get; set; }
        public System.Guid UserGroupID { get; set; }
        public byte[] Photo { get; set; }
        public System.Guid UserType { get; set; }
        public Nullable<bool> DailyStoreNote { get; set; }
        public Nullable<bool> DailyClientNote { get; set; }
        public Nullable<bool> DailyVendorNote { get; set; }
        public Nullable<bool> Unscheduled { get; set; }
        public Nullable<bool> ActiveType { get; set; }
        public string Extension { get; set; }
        public Nullable<bool> Sls { get; set; }
        public Nullable<bool> ProphesyLocal { get; set; }
        public string Email2 { get; set; }
        public string EmailSig { get; set; }
        public string Email2Sig { get; set; }
        public Nullable<long> RecurringReports { get; set; }
        public string NickName { get; set; }
        public int LogoffTime { get; set; }
        public Nullable<bool> DoNotLogoff { get; set; }
        public Nullable<bool> Sysadmin { get; set; }
        public string PasswordSecurityQuestion { get; set; }
        public string PasswordSecurityanswer { get; set; }
        public Nullable<System.DateTime> Inputdate { get; set; }
        public string Inputby { get; set; }
        public Nullable<System.DateTime> LastModifieddate { get; set; }
        public string LastModifiedby { get; set; }
        [ScriptIgnore]
        public virtual UserGroup UserGroup { get; set; }

    }
}
