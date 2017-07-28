using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TravelPackage.Models;


namespace TravelPackage.Controllers
{
    public class HomeController : Controller
    {
        private TravelDBContainer db = new TravelDBContainer();

        public ActionResult Index()
        {
            return View(db.tpAreas.ToList().OrderBy(d=>d.Sort) );
        }

        public ActionResult Destination(int? id, string AreaName)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tpAreas tpAreas = db.tpAreas.Find(id);
            if (tpAreas == null)
            {
                return HttpNotFound();
            }

            ViewBag.Destination = AreaName;
            ViewBag.Description = tpAreas.PageRemarks;

            var data = db.tpProducts.Where(d => d.tpAreasId == id).OrderBy(d => d.Sort).ToList();
                
            return View(data);

        }

        public ActionResult Product(int? id, string ProductName)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tpProducts product = db.tpProducts.Find(id);
            if ( product == null)
            {
                return HttpNotFound();
            }

            ViewBag.DestId = product.tpAreasId;
            ViewBag.DestName = product.tpArea.Name;

            return View(product);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}