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
    public class tpInqServicesController : Controller
    {
        private TravelDBContainer db = new TravelDBContainer();

        // GET: tpInqServices
        public ActionResult Index(int? id)
        {

            var tpInqServices = db.tpInqServices.Include(t => t.tpProduct).Include(t => t.tpInquiry);

            if (id != null)
            {
                tpInqServices.Where(t => t.tpInquiryId == id);
            }

            return View(tpInqServices.ToList());
        }

        // GET: tpInqServices/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tpInqServices tpInqServices = db.tpInqServices.Find(id);
            if (tpInqServices == null)
            {
                return HttpNotFound();
            }
            return View(tpInqServices);
        }

        // GET: tpInqServices/Create
        public ActionResult Create()
        {
            ViewBag.tpProductsId = new SelectList(db.tpProducts, "Id", "Name");
            ViewBag.tpInquiryId = new SelectList(db.tpInquiries, "Id", "LeadGuest");
            return View();
        }

        // POST: tpInqServices/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,tpInquiryId,tpProductsId,dtSvcStart,Message")] tpInqServices tpInqServices)
        {
            if (ModelState.IsValid)
            {
                db.tpInqServices.Add(tpInqServices);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.tpProductsId = new SelectList(db.tpProducts, "Id", "Name", tpInqServices.tpProductsId);
            ViewBag.tpInquiryId = new SelectList(db.tpInquiries, "Id", "LeadGuest", tpInqServices.tpInquiryId);
            return View(tpInqServices);
        }

        // GET: tpInqServices/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tpInqServices tpInqServices = db.tpInqServices.Find(id);
            if (tpInqServices == null)
            {
                return HttpNotFound();
            }
            ViewBag.tpProductsId = new SelectList(db.tpProducts, "Id", "Name", tpInqServices.tpProductsId);
            ViewBag.tpInquiryId = new SelectList(db.tpInquiries, "Id", "LeadGuest", tpInqServices.tpInquiryId);
            return View(tpInqServices);
        }

        // POST: tpInqServices/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,tpInquiryId,tpProductsId,dtSvcStart,Message")] tpInqServices tpInqServices)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tpInqServices).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.tpProductsId = new SelectList(db.tpProducts, "Id", "Name", tpInqServices.tpProductsId);
            ViewBag.tpInquiryId = new SelectList(db.tpInquiries, "Id", "LeadGuest", tpInqServices.tpInquiryId);
            return View(tpInqServices);
        }

        // GET: tpInqServices/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tpInqServices tpInqServices = db.tpInqServices.Find(id);
            if (tpInqServices == null)
            {
                return HttpNotFound();
            }
            return View(tpInqServices);
        }

        // POST: tpInqServices/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tpInqServices tpInqServices = db.tpInqServices.Find(id);
            db.tpInqServices.Remove(tpInqServices);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
