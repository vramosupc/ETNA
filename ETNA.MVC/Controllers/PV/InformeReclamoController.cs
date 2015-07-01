using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ETNA.MVC.Controllers.PV
{
    public class InformeReclamoController : Controller
    {
        //
        // GET: /InformeReclamo/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /InformeReclamo/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /InformeReclamo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /InformeReclamo/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /InformeReclamo/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /InformeReclamo/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /InformeReclamo/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /InformeReclamo/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
