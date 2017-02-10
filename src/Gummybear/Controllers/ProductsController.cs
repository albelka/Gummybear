using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Gummybear.Models;


namespace Gummybear.Controllers
{
    public class ProductsController : Controller
    {
        private GummybearDbContext db = new GummybearDbContext();
        public IActionResult Index()
        {
            return View(db.Products.ToList());
        }

        public IActionResult Details(int id)
        { 
            var thisProduct = db.Products.FirstOrDefault(ProductsController => ProductsController.ProductId == id);
            return View(thisProduct);
        }
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Product product)
        {
            db.Products.Add(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
