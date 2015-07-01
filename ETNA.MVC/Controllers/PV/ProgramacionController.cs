using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ETNA.MVC.PlantillasServices;
using ETNA.MVC.ProgramacionServices;

using ETNA.MVC.Models.PV;
using AutoMapper;
namespace ETNA.MVC.Controllers.PV
{
    public class ProgramacionController : Controller
    {
        //
        // GET: /Programacion/

        public ActionResult Index()
        {
            var service = new ProgramacionServices.ProgramacionClient();
            var dtos = service.ListaProgramaciones();

            Mapper.CreateMap<ProgramacionDto, ProgramacionViewModel>();
            var model = Mapper.Map<List<ProgramacionViewModel>>(dtos);


            return View(model);
   
        }

        //
        // GET: /Programacion/Details/5

        public ActionResult Details(int id)
        {
            @ViewBag.Id = id;


            //Invocamos al servicio
            var service = new ProgramacionServices.ProgramacionClient(  );

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var programacionDto = service.ObtenerProgramacion(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<ProgramacionViewModel>(programacionDto);

            return View(model);
        }

        //
        // GET: /Programacion/Create

        public ActionResult Create()
        {
            var service = new PlantillasServices.PlantillasClient();
            var plantillasDtos = service.ListaPlantillas();

            //Mapper.CreateMap<PlantillaDto, PlantillaViewModel>();
            //var model = Mapper.Map<List<PlantillaViewModel>>(plantillasDtos);
            ViewData["PlantillaId"] = new SelectList(
                plantillasDtos.Select(x => new { value = x.Id, text = x.Descripcion }),
                "value", "text");

            return View();
        }

        //
        // POST: /Programacion/Create

        [HttpPost]
        public ActionResult Create(ProgramacionViewModel model)
        {
            try
            {
                var service = new ProgramacionServices.ProgramacionClient();
                service.InsertarProgramacion(model.CodigoProgramacion, model.Periodicidad, model.FechaInicio, model.FechaFin, model.PorcentajeEncuestados, model.Descripcion, model.Estado, model.DiasVigencia, model.PlantillaId);
          

                return RedirectToAction("Index", new { creado = true });


            }
            catch (NullReferenceException e)
            {
                Console.WriteLine("{0} Exception caught.", e);
                return View(model);
            }

        }

        //
        // GET: /Programacion/Edit/5

        public ActionResult Edit(int id)
        {
            //Invocamos al servicio
            var service = new ProgramacionServices.ProgramacionClient();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var programacionDto = service.ObtenerProgramacion(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<ProgramacionViewModel>(programacionDto);

            var service1 = new PlantillasServices.PlantillasClient();
            var plantillasDtos = service1.ListaPlantillas();

            //Mapper.CreateMap<PlantillaDto, PlantillaViewModel>();
            //var model = Mapper.Map<List<PlantillaViewModel>>(plantillasDtos);
            ViewData["PlantillaId"] = new SelectList(
                plantillasDtos.Select(x => new { value = x.Id, text = x.Descripcion }),
                "value", "text", programacionDto.PlantillaId);

            return View(model);
       
        }

        //
        // POST: /Programacion/Edit/5

        [HttpPost]
        public ActionResult Edit(ProgramacionViewModel model)
        {
            try
            {
                var service = new ProgramacionClient();

                service.EditarProgramacion(model.Id, model.CodigoProgramacion, model.Periodicidad, model.FechaInicio, model.FechaFin, model.PorcentajeEncuestados, model.Descripcion, model.Estado,model.DiasVigencia, model.PlantillaId);

                return RedirectToAction("Index", new { modifico = true });

            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Programacion/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Programacion/Delete/5

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
