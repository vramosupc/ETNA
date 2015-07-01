using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ETNA.BL.PV;
using ETNA.Domain;
using ETNA.DTOs.FB;
using ETNA.DTOs.PV;
using AutoMapper;


namespace ETNA.WCF.PV
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Reclamos" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Reclamos.svc o Reclamos.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Reclamos : IReclamos
    {

        public int InsertarReclamo(string codigoReclamo, DateTime fechaHoraReclamo, string motivo, string detalle, string observaciones, DateTime fechaRespuesta, string estado, int idFacturaDetalle)
        {
            var gestorReclamos = new GestorReclamos();
            return gestorReclamos.InsertarReclamo(codigoReclamo, fechaHoraReclamo, motivo, detalle, observaciones, fechaRespuesta, estado,idFacturaDetalle);
       
        }

        public bool EditarReclamo(int idReclamo, string codigoReclamo, DateTime fechaHoraReclamo, string motivo, string detalle, string observaciones, DateTime fechaRespuesta, string estado, int idFacturaDetalle)
        {
            var gestorReclamos = new GestorReclamos();
            return gestorReclamos.EditarReclamo(idReclamo,codigoReclamo, fechaHoraReclamo, motivo, detalle, observaciones, fechaRespuesta, estado,idFacturaDetalle);
        }


        public List<ReclamoDto> ListaReclamos()
        {
            var gestorReclamos = new GestorReclamos();
            var lista = gestorReclamos.Listar();
            var listaDtos = new List<ReclamoDto>();
        
            foreach (var reclamo in lista)
            {
                var dto = new ReclamoDto();
                dto.Id = reclamo.Id;
                dto.CodigoReclamo = reclamo.CodigoReclamo;
                dto.Detalle = reclamo.Detalle;
                dto.FechaHoraReclamo = reclamo.FechaHoraReclamo;
                dto.Observaciones = reclamo.Observaciones;
                dto.FechaRespuesta = reclamo.FechaRespuesta;
                dto.NombreRegistrador = reclamo.RegistradoPor.Nombres + " " + reclamo.RegistradoPor.Apellidos;
                dto.NombreCliente = reclamo.FacturaDetalle.Factura.Cliente.Nombres + " " +
                                    reclamo.FacturaDetalle.Factura.Cliente.Apellidos;
                dto.NumeroFactura = reclamo.FacturaDetalle.Factura.NroFactura;
                dto.NombreProducto= reclamo.FacturaDetalle.Producto.Nombre;
                dto.IdFacturaDetalle = reclamo.FacturaDetalle.Id;

                if (reclamo.Estado.Equals("P"))
                {
                    dto.DescripcionEstado = "Pendiente";}
                else if(reclamo.Estado.Equals("C"))
                {
                    dto.DescripcionEstado = "Cancelado";
                }
                else {dto.DescripcionEstado = "Atendido";}

                dto.Estado = reclamo.Estado;
                dto.Motivo = reclamo.Motivo;

                listaDtos.Add(dto);
            }

             return listaDtos;
            
           // Mapper.CreateMap<Reclamo, ReclamoDto>();
                
           
            //var listaDtos = Mapper.Map<List<ReclamoDto>>(lista);
            

        }


        public ReclamoDto ObtenerReclamo(int idReclamo)
        {
            var gestorReclamos = new GestorReclamos();
            var reclamo = gestorReclamos.ObtenerReclamo(idReclamo);
            var dto = new ReclamoDto();
            dto.Id = reclamo.Id;
            dto.CodigoReclamo = reclamo.CodigoReclamo;
            dto.Detalle = reclamo.Detalle;
            dto.FechaHoraReclamo = reclamo.FechaHoraReclamo;
            dto.Observaciones = reclamo.Observaciones;
            dto.FechaRespuesta = reclamo.FechaRespuesta;
            dto.NombreRegistrador = reclamo.RegistradoPor.Nombres+ " "+reclamo.RegistradoPor.Apellidos;
            
            dto.Estado = reclamo.Estado;
            dto.Motivo = reclamo.Motivo;
            dto.NombreCliente = reclamo.FacturaDetalle.Factura.Cliente.Nombres + " " +
                               reclamo.FacturaDetalle.Factura.Cliente.Apellidos;
            dto.NumeroFactura = reclamo.FacturaDetalle.Factura.NroFactura;
            dto.NombreProducto = reclamo.FacturaDetalle.Producto.Nombre;
            dto.IdFacturaDetalle = reclamo.FacturaDetalle.Id;
            if (reclamo.Estado.Equals("P"))
            {
                dto.DescripcionEstado = "Pendiente";
            }
            else if (reclamo.Estado.Equals("C"))
            {
                dto.DescripcionEstado = "Cancelado";
            }
            else { dto.DescripcionEstado = "Atendido"; }

           return dto;
 
        }
    }
}
