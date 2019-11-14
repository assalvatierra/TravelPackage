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
    public class tpInquiriesController : Controller
    {
        private TravelDBContainer db = new TravelDBContainer();

        // GET: tpInquiries
        public ActionResult Index()
        {
            return View(db.tpInquiries.Include(c=>c.tpInqServices).OrderByDescending(c=>c.Id).ToList());
        }

        // GET: tpInquiries/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tpInquiry tpInquiry = db.tpInquiries.Find(id);
            if (tpInquiry == null)
            {
                return HttpNotFound();
            }
            return View(tpInquiry);
        }

        // GET: tpInquiries/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tpInquiries/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,dtInquiry,LeadGuest,ContactNo,Email,NoOfChild,NoOfAdult,Status")] tpInquiry tpInquiry)
        {
            if (ModelState.IsValid)
            {
                db.tpInquiries.Add(tpInquiry);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tpInquiry);
        }

        // GET: tpInquiries/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tpInquiry tpInquiry = db.tpInquiries.Find(id);
            if (tpInquiry == null)
            {
                return HttpNotFound();
            }
            return View(tpInquiry);
        }

        // POST: tpInquiries/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,dtInquiry,LeadGuest,ContactNo,Email,NoOfChild,NoOfAdult,Status")] tpInquiry tpInquiry)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tpInquiry).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tpInquiry);
        }

        // GET: tpInquiries/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tpInquiry tpInquiry = db.tpInquiries.Find(id);
            if (tpInquiry == null)
            {
                return HttpNotFound();
            }
            return View(tpInquiry);
        }

        // POST: tpInquiries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tpInquiry tpInquiry = db.tpInquiries.Find(id);
            db.tpInquiries.Remove(tpInquiry);
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
