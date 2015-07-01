using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using ETNA.MVC.FacturasServices;
using ETNA.MVC.Models.PV;

namespace ETNA.MVC.Controllers.PV
{
    public class FacturaController : Controller
    {
        //
        // GET: /Factura/

        public ActionResult Index()
        {
            var service = new FacturasServices.FacturasClient();
            var facturasDto = service.ListaFacturas();

            Mapper.CreateMap<FacturaDto, FacturaViewModel>();
            var model = Mapper.Map<List<FacturaViewModel>>(facturasDto);
            
            return View(model);
        }

        //
        // GET: /Factura/Details/5/page/1

        public ActionResult Details(string id, int page = 1)
        {
            @ViewBag.Id = id;
            @ViewBag.Page = page;

            //Invocamos al servicio
            var service = new FacturasServices.FacturasClient();
            var detalleDto = service.ListarDetallePorNroFactura(id,page);

            var nros = service.NroPaginasPorDetalleNroFactura(id);
            @ViewBag.TotalPages = nros.GetValue(1);
            @ViewBag.NroRegistros = nros.GetValue(0);
            Mapper.CreateMap<FacturaDetalleDto, FacturaDetalleViewModel>();
            var model = Mapper.Map<List<FacturaDetalleViewModel>>(detalleDto);

            return View(model);
        }
    }
}
