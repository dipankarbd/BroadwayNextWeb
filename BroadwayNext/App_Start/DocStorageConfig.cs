using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
 
namespace BroadwayNextWeb
{
    public class DocStorageConfig
    {
        public static void CreateStorageDirectories()
        {
            string storage = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Storage");
            if (!Directory.Exists(storage))
            {
                Directory.CreateDirectory(storage);
            }

            string tmp = Path.Combine(storage, "tmp");
            if (!Directory.Exists(tmp))
            {
                Directory.CreateDirectory(tmp);
            }

            string vendorDocument = Path.Combine(storage, "VendorDocument");
            if (!Directory.Exists(vendorDocument))
            {
                Directory.CreateDirectory(vendorDocument);
            }
        }
    }
}