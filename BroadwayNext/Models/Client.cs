using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class Client
    {
        public Client()
        {
            this.ClientBillToes = new List<ClientBillTo>();
            this.ClientContacts = new List<ClientContact>();
            this.ClientDocuments = new List<ClientDocument>();
            this.ClientInstructions = new List<ClientInstruction>();
            this.ClientManagers = new List<ClientManager>();
            this.ClientNotes = new List<ClientNote>();
            this.ClientNotifications = new List<ClientNotification>();
            this.ClientPrefixes = new List<ClientPrefix>();
           
        }

        public System.Guid ClientID { get; set; }
        public string Clinum { get; set; }
        public string AcctPrefix { get; set; }
        public string Company { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Phone { get; set; }
        public string PhoneExt { get; set; }
        public string Fax { get; set; }
        public string Mobile { get; set; }
        public string TechnologyProvider { get; set; }
        public Nullable<bool> ActiveType { get; set; }
        public string Email { get; set; }
        public string Website { get; set; }
        public Nullable<decimal> DNE { get; set; }
        public Nullable<System.DateTime> Inputdate { get; set; }
        public string Inputby { get; set; }
        public Nullable<bool> CreditHold { get; set; }
        public Nullable<int> PaymentTermDays { get; set; }
        public Nullable<bool> AerialPricing { get; set; }
        public Nullable<int> InvDays { get; set; }
        public Nullable<bool> PrintInoutSignOff { get; set; }
        public Nullable<bool> PrintLocID { get; set; }
        public string Artist { get; set; }
        public string PC { get; set; }
        public Nullable<bool> CareOff { get; set; }
        public Nullable<bool> TravelLabor { get; set; }
        public string Title { get; set; }
        public Nullable<bool> LocationNameType { get; set; }
        public string CreditLimit { get; set; }
        public string LastModifiedBy { get; set; }
        public Nullable<System.DateTime> LastModifiedDate { get; set; }
        public virtual ICollection<ClientBillTo> ClientBillToes { get; set; }
        public virtual ICollection<ClientContact> ClientContacts { get; set; }
        public virtual ICollection<ClientDocument> ClientDocuments { get; set; }
        public virtual ICollection<ClientInstruction> ClientInstructions { get; set; }
        public virtual ICollection<ClientManager> ClientManagers { get; set; }
        public virtual ICollection<ClientNote> ClientNotes { get; set; }
        public virtual ICollection<ClientNotification> ClientNotifications { get; set; }
        public virtual ICollection<ClientPrefix> ClientPrefixes { get; set; }
       
        
    }
}
