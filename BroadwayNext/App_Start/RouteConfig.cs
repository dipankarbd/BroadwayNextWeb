using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace BroadwayNextWeb
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
<<<<<<< HEAD
                defaults: new { controller = "ClientListing", action = "Index", id = UrlParameter.Optional }
=======
                defaults: new { controller = "VendorListing", action = "Index", id = UrlParameter.Optional } 
>>>>>>> 16aeaafb8afb37d2c1be3a75852a6a07f8ef4a0f
            );
        }
    }
}