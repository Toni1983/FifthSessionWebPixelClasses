using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcTemplate.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            ViewBag.TopText = "Welcome to our website";
            return View();
        }
        public ActionResult About()
        {
            ViewBag.TopText = "Visyon, Mission";
            return View();
        }
    }
}