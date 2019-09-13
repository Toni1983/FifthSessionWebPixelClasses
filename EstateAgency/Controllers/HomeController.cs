using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EstateAgency.Controllers
{
    public class HomeController : Controller
    {
        
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult About()
        {
            return View();
        }
        public ActionResult Property()
        {
            return View();
        }
        public ActionResult Blog()
        {
            return View();
        }
        public ActionResult PropertySingle()
        {
            return View();
        }
        public ActionResult BlogSingle()
        {
            return View();
        }
        public ActionResult AgentsGrid()
        {
            return View();
        }
        public ActionResult AgentsSingle()
        {
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
    }
}