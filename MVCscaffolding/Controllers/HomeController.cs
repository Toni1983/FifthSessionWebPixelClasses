using MVCscaffolding.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCscaffolding.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        MvcDenemeEntities db = new MvcDenemeEntities();
        public ActionResult LoginPanel()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LoginPanel(string EmailAddress, string Password)
        {
            Stopwatch timer = new Stopwatch();
            if (db.Users.Any(x => x.EmailAddress == EmailAddress && x.Password == Password))
            {
                var userId = db.Users.First(x => x.EmailAddress == EmailAddress && x.Password == Password).UserId;
                Session["userId"] = userId;
                ViewBag.Login = "You succesfully logid in";
            }
            else if(Session["userId"] == null)
            {
                timer.Start();
                ViewBag.LoginFailed = "Please enter the correct data within 3 min";
            }
            return View();
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(Users user, string confirmPassword)
        {
            if (user.Password == confirmPassword)
            {
                user.Registerdate = DateTime.Now;
                user.IsActive = true;
                db.Users.Add(user);
                db.SaveChanges();
                return RedirectToAction("LoginPanel", new { Dynamic = ViewBag.RegisteryComplete = "You succesfully registered yourself" });
            }
            else
            {
                ViewBag.CorrectPassword = "Please enter the same password";
            }
            return View("Register", new { ViewBag.CorrectPassword });

        }
    }
}