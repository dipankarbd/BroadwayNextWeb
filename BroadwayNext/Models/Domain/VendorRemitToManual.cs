﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BroadwayNextWeb.Models
{
    public partial class VendorRemitTo
    {
        [NotMapped]
        public bool Edited { get; set; }
    }
}