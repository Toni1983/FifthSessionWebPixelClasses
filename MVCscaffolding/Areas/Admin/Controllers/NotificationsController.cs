using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MVCscaffolding.Models;

namespace MVCscaffolding.Areas.Admin.Controllers
{
    public class NotificationsController : Controller
    {
        private MvcDenemeEntities db = new MvcDenemeEntities();

        // GET: Admin/Notifications
        public ActionResult Index()
        {
            return View(db.Notification.ToList());
        }

        // GET: Admin/Notifications/Details/5
        public ActionResult Details(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Notification notification = db.Notification.Find(id);
            if (notification == null)
            {
                return HttpNotFound();
            }
            return View(notification);
        }

        // GET: Admin/Notifications/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Notifications/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "NotificationId,Title,Description,IsActive")] Notification notification)
        {
            if (ModelState.IsValid)
            {
                notification.Registerdate = DateTime.Now;
                db.Notification.Add(notification);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(notification);
        }

        // GET: Admin/Notifications/Edit/5
        public ActionResult Edit(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Notification notification = db.Notification.Find(id);
            if (notification == null)
            {
                return HttpNotFound();
            }
            return View(notification);
        }

        // POST: Admin/Notifications/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NotificationId,Title,Description,IsActive")] Notification notification)
        {
            if (ModelState.IsValid)
            {
                var editToNotification = db.Notification.Find(notification.NotificationId);
                editToNotification.Description = notification.Description;
                editToNotification.IsActive = notification.IsActive;
                editToNotification.Title = notification.Title;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(notification);
        }

        // GET: Admin/Notifications/Delete/5
        public ActionResult Delete(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Notification notification = db.Notification.Find(id);
            if (notification == null)
            {
                return HttpNotFound();
            }
            return View(notification);
        }

        // POST: Admin/Notifications/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(byte id)
        {
            Notification notification = db.Notification.Find(id);
            db.Notification.Remove(notification);
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
