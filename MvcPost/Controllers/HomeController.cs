using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcPost.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            ViewBag.Text = "Toon van de Mortel";
            return View();
        }
        //[HttpPost]
        //public ActionResult Index(string userName, string Password)
        //{
        //    return View();
        //}
        [HttpPost]
        public ActionResult Index(int number1, int number2)
        {
            ViewBag.Result = number1 + number2;
            return View();
        }
    }
}