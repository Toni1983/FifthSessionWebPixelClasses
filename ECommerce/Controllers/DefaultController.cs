using ECommerce.Models;
using ECommerce.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ECommerce.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        ECommerceEntities db = new ECommerceEntities();
        ViewModelsClass vm = new ViewModelsClass();
        public ActionResult Index()
        {
            vm.brands = 
            return View();
        }
    }
}