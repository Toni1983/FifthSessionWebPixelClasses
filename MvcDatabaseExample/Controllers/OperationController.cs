using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcDatabaseExample.Controllers;
using MvcDatabaseExample.Models;

namespace MvcDatabaseExample.Controllers
{
    public class OperationController : Controller
    {
        MvcDenemeEntities db = new MvcDenemeEntities();
        // GET: Operation
        public ActionResult Index()
        {
            
            return View(db.Operations.ToList());
        }
        public ActionResult Detail(int id)
        {
            return View(db.Operations.Find(id));
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Operations operation)
        {
            operation.RegisterDate = DateTime.Now;
            db.Operations.Add(operation);
            db.SaveChanges();
            return RedirectToAction("index");
        }
        public ActionResult Edit(int id)
        {
            return View(db.Operations.Find(id));
        }
        [HttpPost]
        public ActionResult Edit(Operations operation)
        {
            var editOperation = db.Operations.Find(operation.OperationId);
            editOperation.Name = operation.Name;
            editOperation.Result = operation.Result;
            db.SaveChanges();
            return RedirectToAction("index");
        }
        public ActionResult Delete(int id)
        {
            return View(db.Operations.Find(id));
        }
        [HttpPost]
        [ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            db.Operations.Remove(db.Operations.Find(id));
            db.SaveChanges();
            return RedirectToAction("index");
        }

        //[HttpPost]
        //public ActionResult Delete(Operations operation)
        //{
        //    db.Operations.Remove(db.Operations.Find(operation.OperationId));
        //    db.SaveChanges();
        //    return RedirectToAction("index");
        //}

    }
}