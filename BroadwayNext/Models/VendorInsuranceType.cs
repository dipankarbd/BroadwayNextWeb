using System;
using System.Collections.Generic;

namespace BroadwayNextWeb.Models
{
    public class VendorInsuranceType
    {
        public VendorInsuranceType()
        {
            this.VendorInsurances = new List<VendorInsurance>();
        }

        public System.Guid InsuranceTypeID { get; set; }
        public string InsuranceType { get; set; }
        public virtual ICollection<VendorInsurance> VendorInsurances { get; set; }
    }
}
