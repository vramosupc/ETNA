using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ETNA.MVC.Models.PV;
using ETNA.MVC.PlantillasServices;


using AutoMapper;

namespace ETNA.MVC.Controllers.PV
{
    public class PlantillaController : Controller
    {
        //
        // GET: /Plantilla/

        public ActionResult Index()
        {
            var service = new PlantillasServices.PlantillasClient();

     
            var dtos = service.ListaPlantillas();

            Mapper.CreateMap<PlantillaDto, PlantillaViewModel>();
            var model = Mapper.Map<List<PlantillaViewModel>>(dtos);


            return View(model);
        }

        //
        // GET: /Plantilla/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Plantilla/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Plantilla/Create

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
        // GET: /Plantilla/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Plantilla/Edit/5

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
        // GET: /Plantilla/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Plantilla/Delete/5

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
