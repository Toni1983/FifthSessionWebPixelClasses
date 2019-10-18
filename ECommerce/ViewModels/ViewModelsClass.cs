using ECommerce.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECommerce.ViewModels
{
    public class ViewModelsClass
    {
        public List<Categories> categories { get; set; }
        public List<Brands> brands { get; set; }
    }
}