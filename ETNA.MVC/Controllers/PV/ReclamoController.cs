using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using ETNA.MVC.FacturasServices;
using ETNA.MVC.PostVentaServices;
using ETNA.MVC.Models.PV;
using AutoMapper;
using WebMatrix.WebData;

namespace ETNA.MVC.Controllers.PV
{
    public class ReclamoController : Controller
    {
        //
        // GET: /Reclamo/

        public ActionResult Index()
        {

            var service = new PostVentaServices.ReclamosClient();
            var dtos = service.ListaReclamos();

            Mapper.CreateMap<ReclamoDto, ReclamoViewModel>();
            var model = Mapper.Map<List<ReclamoViewModel>>(dtos);

           
            return View(model);
   
        }

        //
        // GET: /Reclamo/Details/5

        public ActionResult Details(int id)
        {
            @ViewBag.Id = id;
          

            //Invocamos al servicio
            var service = new PostVentaServices.ReclamosClient();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var reclamosDto = service.ObtenerReclamo(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<ReclamoViewModel>(reclamosDto);
       
            return View(model);
        }

        //
        // GET: /Reclamo/Create

        public ActionResult Create()
        {
            
            
            return View();
        }

        //
        // POST: /Reclamo/Create

        [HttpPost]
        public ActionResult Create(ReclamoViewModel model)
        {
            try
            {
                var service = new PostVentaServices.ReclamosClient();
                service.InsertarReclamo(model.CodigoReclamo, model.FechaHoraReclamo, model.Motivo, model.Detalle, model.Observaciones, model.FechaRespuesta, model.Estado, model.IdFacturaDetalle, WebSecurity.CurrentUserId);

                
                return RedirectToAction("Index", new { creado = true });


            }
            catch (NullReferenceException e)
            {
                Console.WriteLine("{0} Exception caught.", e);
                return View(model);
            }

        }

        //
        // GET: /Reclamo/Edit/5

        public ActionResult Edit(int id)
        {

            //Invocamos al servicio
            var service = new PostVentaServices.ReclamosClient();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var reclamosDto = service.ObtenerReclamo(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<ReclamoViewModel>(reclamosDto);
            return View(model);
        }

        //
        // POST: /Reclamo/Edit/5

        [HttpPost]
        public ActionResult Edit(ReclamoViewModel model)
        {
            try
            {
                var service = new ReclamosClient();

                service.EditarReclamo( model.Id,model.CodigoReclamo, model.FechaHoraReclamo, model.Motivo, model.Detalle, model.Observaciones, model.FechaRespuesta, model.Estado,model.IdFacturaDetalle);

                return RedirectToAction("Index", new { modifico = true });

            }
            catch
            {
                return View();
            }
        }

        private ActionResult Index(bool p)
        {
            throw new NotImplementedException();
        }

        //
        // GET: /Reclamo/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Reclamo/Delete/5

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

        // GET: /Reclamo/List/5/page/1

        public ActionResult List(string id, int page = 1)
        {
            @ViewBag.Id = id;
            @ViewBag.Page = page;

            //Invocamos al servicio
            var service = new PostVentaServices.ReclamosClient();
            var reclamoDto = service.ListarReclamosPorCodigo(id, page);

            var nros = service.NroPaginasPorCodigoReclamo(id);
            @ViewBag.TotalPages = nros.GetValue(1);
            @ViewBag.NroRegistros = nros.GetValue(0);
            Mapper.CreateMap<ReclamoDto, ReclamoViewModel>();
            var model = Mapper.Map<List<ReclamoViewModel>>(reclamoDto);

            return View(model);
        }
    }
}
