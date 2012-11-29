using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BroadwayNextWeb.Models
{
    public class UserGroup
    {
        public UserGroup()
        {
            this.Users = new List<User>();
            this.ClientManagers = new List<ClientManager>();
        }

        public System.Guid UserGroupID { get; set; }
        public string GroupName { get; set; }
        public string Description { get; set; }
        [ScriptIgnore]
        public virtual ICollection<User> Users { get; set; }
        [ScriptIgnore]
        public virtual ICollection<ClientManager> ClientManagers { get; set; }

    }
}
