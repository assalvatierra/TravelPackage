﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace TravelPackage
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Sitemapxml",
                url: "Sitemap.xml",
                defaults: new { controller = "Home", action = "SitemapXml" }
                );

            routes.MapRoute(
                name: "area_Sitemapxml",
                url: "TravelPackages/{id}/{AreaName}/Sitemap.xml",
                defaults: new { controller = "Home", action = "SitemapXml" }
                );

            routes.MapRoute(
                name: "Bohol",
                url: "BOHOL/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "BOHOL", id = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "Bohol_",
                url: "BOHOL",
                defaults: new { controller = "Home", action = "Destination", AreaName = "BOHOL", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "El Nido",
                url: "EL NIDO/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "EL NIDO", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Davao",
                url: "DAVAO/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "DAVAO", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Cebu",
                url: "CEBU/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "CEBU", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Coron",
                url: "CORON/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "CORON", id = UrlParameter.Optional }
            );
            
            routes.MapRoute(
                name: "Puerto Princesa",
                url: "PUERTO PRINCESA/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "PUERTO PRINCESA", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Malaysia",
                url: "MALAYSIA/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "MALAYSIA", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Thailand",
                url: "THAILAND/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "THAILAND", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Korea",
                url: "KOREA/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "KOREA", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Singapore",
                url: "SINGAPORE/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "SINGAPORE", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Ilocos",
                url: "ILOCOS/{id}",
                defaults: new { controller = "Home", action = "Destination", AreaName = "ILOCOS", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Destination",
                url: "TravelPackages/{id}/{AreaName}",
                defaults: new { controller = "Home", action = "Destination", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Product",
                url: "TourPackages/{id}/{ProductName}",
                defaults: new { controller = "Home", action = "Product", id = UrlParameter.Optional }
            );
            
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
