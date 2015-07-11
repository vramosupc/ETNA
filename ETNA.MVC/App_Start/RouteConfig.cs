﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ETNA.MVC
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "factura",
                url: "Factura/{action}/{id}/page/{page}",
                defaults: new { controller = "Factura", action = "Details", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "reclamo",
                url: "Reclamo/{action}/{id}/page/{page}",
                defaults: new { controller = "Reclamo", action = "List", id = UrlParameter.Optional }
            );
        }
    }
}