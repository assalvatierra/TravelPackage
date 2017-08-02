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

            var featured = db.tpProdCats.Where(d => d.tpCategory.SysCode == "FEATURED").Select(s=>s.tpProductsId);
            var data = db.tpProducts.Where(d => d.tpAreasId == id && featured.Contains(d.Id) ).OrderBy(d => d.Sort).ToList();

            var addons = db.tpProdCats.Where(d => d.tpCategory.SysCode == "ADDON").Select(s => s.tpProductsId);
            ViewBag.Addons = db.tpProducts.Where(d => d.tpAreasId == id && addons.Contains(d.Id)).OrderBy(d => d.Sort).ToList();
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

            WebInquiryForm wif = new WebInquiryForm();
            if (Session["INQUIRYOBJ"] != null )
            {
                wif = (WebInquiryForm)Session["INQUIRYOBJ"];
            }
            else
            {
                wif.items = new List<WebInquiryItems>();
            }
            wif.ProductId = (int)id;
            wif.JobStart = DateTime.Today;

            ViewBag.Inquiry = wif;
            ViewBag.DestId = product.tpAreasId;
            ViewBag.DestName = product.tpArea.Name;
            ViewBag.ProdImages = db.tpProductImages.Where(d => d.tpProductsId == id).OrderBy(s=>s.Sort).ToList();

            return View(product);
        }

        [HttpPost]
        public ActionResult Product([Bind( Include = "ProductId, LeadGuest, ContactNo, Email, NoOfAdult, NoOfChild, JobStart, Message, Status")] WebInquiryForm wif, string btnSubmit)
        {
            try
            {
                if (ModelState.IsValid)
                {

                    //add product for inquiry/book 
                    if (wif.items == null) wif.items = new List<WebInquiryItems>();
                    wif.items.Add( new WebInquiryItems
                    {
                        ProductId = wif.ProductId,
                        dtStart = wif.JobStart,
                        Message = wif.Message
                    });
                    wif.Message = ""; //clean message value for next inquiry

                    if (btnSubmit == "Request a Quote") wif.Status = "QUOTE";
                    if (btnSubmit == "Book this Product") wif.Status = "BOOK";

                    Session["INQUIRYOBJ"] = wif; //update session web inquiry object
                }

                return RedirectToAction("RequestProduct");
            }
            catch (Exception e)
            {
                ViewBag.errormsg = e.Message.Trim(); //for debugging purposes only
                return RedirectToAction("RequestProduct");
            }
        }

        public ActionResult AddRequestProduct(int? id)
        {
            if (Session["INQUIRYOBJ"] == null) return RedirectToAction("Index");

            WebInquiryForm wif = (WebInquiryForm)Session["INQUIRYOBJ"];
            //prepare item to add
            tpInqServices item = new tpInqServices
            {
                tpInquiryId = wif.Id,
                tpProductsId = (int)id,
                dtSvcStart = wif.JobStart,
                Message = "Addon"
            };
            db.tpInqServices.Add(item);
            db.SaveChanges();

            if (wif.Status == "QUOTE")
            {
                return RedirectToAction("RequestQuote", new { id = wif.areaId });
            }

            if (wif.Status == "BOOK")
            {
                return RedirectToAction("RequestBook", new { bookingId = wif.Id });
            }

            return RedirectToAction("index");

        }

        public ActionResult RequestProduct()
        {
            WebInquiryForm wif = (WebInquiryForm)Session["INQUIRYOBJ"];

            //add to database
            Models.tpInquiry tpInq = new tpInquiry
            {
                dtInquiry = DateTime.Now,
                LeadGuest = wif.LeadGuest,
                ContactNo = wif.ContactNo,
                Email = wif.Email,
                NoOfAdult = wif.NoOfAdult,
                NoOfChild = wif.NoOfChild,
                Status = wif.Status
            };
            db.tpInquiries.Add(tpInq);
            db.SaveChanges();

            var item01 = wif.items.FirstOrDefault();
            if (item01 != null)
            {
                Models.tpInqServices tpSvc = new tpInqServices
                {
                    tpInquiryId = tpInq.Id,
                    tpProductsId = item01.ProductId,
                    dtSvcStart = item01.dtStart,
                    Message = item01.Message
                };
                db.tpInqServices.Add(tpSvc);
                db.SaveChanges();
            }

            wif.Id = tpInq.Id;

            //retrieve product for view display purposes
            var product = db.tpProducts.Find(wif.ProductId);
            ViewBag.product = product;

            wif.areaId = product.tpAreasId; //update areaID for use in addon
            Session["INQUIRYOBJ"] = wif; //update session inquiry


            if (wif.Status == "QUOTE")
            {
                return RedirectToAction("RequestQuote", new { id = product.tpAreasId } );
            }

            if (wif.Status == "BOOK")
            {
                return RedirectToAction("RequestBook", new { bookingId = tpInq.Id });
            }

            return View(wif);

        }

        public ActionResult RequestQuote(int? id)
        {
            WebInquiryForm wif = (WebInquiryForm)Session["INQUIRYOBJ"];

            var addons = db.tpProdCats.Where(d => d.tpCategory.SysCode == "ADDON").Select(s => s.tpProductsId);
            ViewBag.Addons = db.tpProducts.Where(d => d.tpAreasId == id && addons.Contains(d.Id)).OrderBy(d => d.Sort).ToList();
            ViewBag.Added = db.tpInqServices.Where(d => d.tpInquiryId == wif.Id);

            return View();
        }

        public ActionResult RequestBook(int? bookingId)
        {
            //var addons = db.tpProdCats.Where(d => d.tpCategory.SysCode == "ADDON").Select(s => s.tpProductsId);
            //ViewBag.Addons = db.tpProducts.Where(d => d.tpAreasId == id && addons.Contains(d.Id)).OrderBy(d => d.Sort).ToList();

            ViewBag.BookingRef = (int) bookingId;
            return View();
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