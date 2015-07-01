using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Web.UI.WebControls;
using ETNA.BL.PV;
using ETNA.DTOs.PV;

namespace ETNA.WCF.PV
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Facturas" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Facturas.svc o Facturas.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Facturas : IFacturas
    {
        public List<FacturaDto> ListaFacturas()
        {
            var gestorFactura = new GestorFacturas();
            var lista = gestorFactura.Listar();
            var listaDtos = new List<FacturaDto>();

            foreach (var factura in lista)
            {
                var dto = new FacturaDto();
                dto.Id = factura.Id;
                dto.NroFactura = factura.NroFactura;
                dto.FechaFactura = factura.FechaFactura;
                dto.ValorVenta = factura.ValorVenta;
                dto.PrecioVenta = factura.PrecioVenta;
                dto.Estado = factura.Estado;
                dto.NombreCompletoCliente = factura.Cliente.Apellidos + ", " + factura.Cliente.Nombres;

                listaDtos.Add(dto);
            }

            return listaDtos;
        }


        public FacturaDto ObtenerFactura(int idFactura)
        {
            var gestorFactura = new GestorFacturas();
            var factura = gestorFactura.ObtenerFactura(idFactura);
            var dto = new FacturaDto();
            try
            {
                if (factura == null)
                {
                    throw new Exception("Factura no encontrada");
                }
                dto.Id = factura.Id;
                dto.NroFactura = factura.NroFactura;
                dto.FechaFactura = factura.FechaFactura;
                dto.ValorVenta = factura.ValorVenta;
                dto.PrecioVenta = factura.PrecioVenta;
                dto.Estado = factura.Estado;
                dto.NombreCompletoCliente = factura.Cliente.Apellidos + ", " + factura.Cliente.Nombres;
            }
            catch (Exception e)
            {
                //throw;
                Console.WriteLine("{0} Exception caught.", e.Message);
            }
            return dto;
        }

        public List<FacturaDetalleDto> ListaFacturaDetalles(int idFactura)
        {
            var gestorFactura = new GestorFacturas();
            var lista = gestorFactura.ListarDetalle(idFactura);
            var listaDtos = new List<FacturaDetalleDto>();

            foreach (var detalle in lista)
            {
                var dto = new FacturaDetalleDto();
                dto.Id = detalle.Id;
                dto.NroFactura = detalle.Factura.NroFactura;
                dto.IdProducto = detalle.Producto.Id;
                dto.NombreProducto = detalle.Producto.Nombre;
                dto.PrecioVentaProducto = detalle.Producto.PrecioListaVenta;
                dto.EstadoProducto = detalle.Producto.Estado;
                dto.FechaFactura = detalle.Factura.FechaFactura;
                listaDtos.Add(dto);
            }

            return listaDtos;
        }

        public List<int> NroPaginasPorDetalleNroFactura(string nroFactura)
        {
            var gestorFactura = new GestorFacturas();
            return gestorFactura.NroPaginasPorDetalleNroFactura(nroFactura);
        }

        public List<FacturaDetalleDto> ListarDetallePorNroFactura(string nroFactura, int nroPagina)
        {
            var gestorFactura = new GestorFacturas();
            var lista = gestorFactura.ListarDetallePorNroFactura(nroFactura, nroPagina);
            var listaDtos = new List<FacturaDetalleDto>();

            foreach (var detalle in lista)
            {
                var dto = new FacturaDetalleDto();
                dto.Id = detalle.Id;
                dto.NroFactura = detalle.Factura.NroFactura;
                dto.NombreCliente = detalle.Factura.Cliente.Apellidos + ", " + detalle.Factura.Cliente.Nombres;
                dto.IdProducto = detalle.Producto.Id;
                dto.NombreProducto = detalle.Producto.Nombre;
                dto.PrecioVentaProducto = detalle.Producto.PrecioListaVenta;
                dto.EstadoProducto = detalle.Producto.Estado;
                dto.FechaFactura = detalle.Factura.FechaFactura;

                listaDtos.Add(dto);
            }

            return listaDtos;
        }

        public FacturaDetalleDto ObtenerFacturaDetalle(int idDetalle)
        {
            var gestorFactura = new GestorFacturas();
            var detalle = gestorFactura.ObtenerDetalleFactura(idDetalle);
            var dto = new FacturaDetalleDto();
            try
            {
                dto.Id = detalle.Id;
                dto.NroFactura = detalle.Factura.NroFactura;
                dto.FechaFactura = detalle.Factura.FechaFactura;
                dto.IdProducto = detalle.Producto.Id;
                dto.NombreProducto = detalle.Producto.Nombre;
                dto.PrecioVentaProducto = detalle.Producto.PrecioListaVenta;
                dto.EstadoProducto = detalle.Producto.Estado;
            }
            catch (Exception e)
            {
                //throw;
                Console.WriteLine("{0} Exception caught.", e.Message);
            }

            return dto;
        }
    }
}
