using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ETNA.MVC.InformesReclamosServices;
using ETNA.MVC.Models.PV;
using AutoMapper;
namespace ETNA.MVC.Controllers.PV
{
    public class InformeReclamoController : Controller
    {
        //
        // GET: /InformeReclamo/

        public ActionResult Index()
        {
            var service = new InformesReclamosServices.InformesReclamosClient();
            var dtos = service.ListaInfomesReclamos();

            Mapper.CreateMap<InformeReclamoDto, InformeReclamoViewModel>();
            var model = Mapper.Map<List<InformeReclamoViewModel>>(dtos);


            return View(model);
        }

        //
        // GET: /InformeReclamo/Details/5

        public ActionResult Details(int id)
        {
            @ViewBag.Id = id;


            //Invocamos al servicio
            var service = new InformesReclamosServices.InformesReclamosClient();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var informesDto = service.ObtenerInformeReclamo(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<InformeReclamoViewModel>(informesDto);

            return View(model);
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
