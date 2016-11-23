using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MelderWebSite01.Controllers
{
    public class ProductsController : Controller
    {
        // GET: Products
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Robots(string id)
        {
            //ЫВАЫВА
            ProductsBaseEntities context = new ProductsBaseEntities();
            PRODUCTS product = context.PRODUCTS.Where(c => c.URL_NAME.ToLower().Equals(id.ToLower())).ToList().FirstOrDefault();
            if (product != null)
                return View("Robots", product);
            else return View("RobotsMenu");
        }
    }
}