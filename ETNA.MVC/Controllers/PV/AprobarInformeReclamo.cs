using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using ETNA.MVC.FacturasServices;
using ETNA.MVC.InformesReclamosServices;
using ETNA.MVC.PostVentaServices;
using ETNA.MVC.Models.PV;
using AutoMapper;

namespace ETNA.MVC.Controllers.PV
{
    public class AprobarInformeReclamoController : Controller
    {
        //
        // GET: /Reclamo/

        public ActionResult Index()
        {

            var service = new InformesReclamosServices.InformesReclamosClient();
            var dtos = service.ListaInfomesReclamos();

            Mapper.CreateMap<InformeReclamoDto, InformeReclamoViewModel>();
            var model = Mapper.Map<List<InformeReclamoViewModel>>(dtos);


            return View(model);

        }

        //
        // GET: /Reclamo/Details/5

        public ActionResult Details(int id)
        {
            @ViewBag.Id = id;


            //Invocamos al servicio
            var service = new InformesReclamosServices.InformesReclamosClient();
            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var informeDto = service.ObtenerInformeReclamo(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<InformeReclamoViewModel>(informeDto);

            return View(model);
        }

        //
        // GET: /Reclamo/Create

        //
        // GET: /Reclamo/Edit/5

    }
}
