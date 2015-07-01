using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ETNA.Common;
using ETNA.MVC.Models.LO;
using WebMatrix.WebData;
using AutoMapper;

namespace ETNA.MVC.Controllers.LO
{
    public class GuiaEntradaController : Controller
    {
        //
        // GET: /GuiaEntrada/
        // Lista de almacenes disponibles para el usuario
        public ActionResult Almacenes()
        {

            //Invocamos al servicio
            var service = new LogisticaServices.EntradasYSalidasServiceClient();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var almacenesDto = service.ObtenerAlmacenesPorEmpleado(WebSecurity.CurrentUserId);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<List<AlmacenViewModel>>(almacenesDto);
            return View(model);
        }

        //
        // GET: /GuiaEntrada/Solicitudes/5
        // Lista de solicitudes aprobadas listas para hacer una guía de entrada
        public ActionResult Solicitudes(int id)
        {
            @ViewBag.IdAlmacen = id;

            //Invocamos al servicio
            var service = new LogisticaServices.EntradasYSalidasServiceClient();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var solicitudesDto = service.ObtenerSolicitudesEntrada(0, (int) Enums.EstadoSolicitudEntrada.Aprobada,
                DateTime.MinValue, DateTime.MinValue, 0, 0);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<List<ListaSolicitudEntradaViewModel>>(solicitudesDto);
            return View(model);            
        }

        //
        // GET: /GuiaEntrada/Atender/5
        // Detalle de una solicitud de Entrada
        public ActionResult Atender(int id, int idAlmacen)
        {
            @ViewBag.IdSolicitud = id;
            @ViewBag.IdAlmacen = idAlmacen;

            //Invocamos al servicio
            var service = new LogisticaServices.EntradasYSalidasServiceClient();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var solicitudesDto = service.ObtenerSolicitudEntrada(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<SolicitudEntradaViewModel>(solicitudesDto);
            return View(model);
        }

        //
        // POST: /GuiaEntrada/Atender/
        // Dar de alta una guía de entrada
        [HttpPost]
        public ActionResult Atender(AltaGuiaEntradaModel model)
        {
            return View();
        }

        //
        // GET: /GuiaEntrada/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /GuiaEntrada/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /GuiaEntrada/Create

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
        // GET: /GuiaEntrada/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /GuiaEntrada/Edit/5

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
        // GET: /GuiaEntrada/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /GuiaEntrada/Delete/5

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
