using HomeworkClassSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HomeworkClassSystem.Controllers
{
    public class OperationController : Controller
    {
        // GET: Operation
        ClassystemEntities db = new ClassystemEntities();
        public ActionResult Index()
        {
            return View(db.Students.ToList());
        }
        [HttpPost]
        public ActionResult Index(string StudentName, string password)
        {
            int id = db.Students.First(x => x.StudentName == StudentName).StudentId;
            var CurrentId = db.Students.Find(id);
            if (db.Students.Any(x =>x.StudentName == StudentName && x.Password == password))
            {
                if (CurrentId.IsAdmin == true)
                {
                    return RedirectToAction("PersonalPageMaster", new { id = CurrentId.StudentId });
                }
                else
                {
                    return RedirectToAction("PersonalPage", new { id = CurrentId.StudentId });
                }
            }
            else
            {
                ViewBag.Incorrect = "Please enter the correct password and username";
            }
            return View(db.Students.ToList());
        }
        public ActionResult PersonalPage(int id)
        {
            return View(db.Students.Find(id));
        }
        public ActionResult PersonalPageMaster(int id)
        {
            return View(db.Students.Find(id));
        }
    }
}