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
                dto.Id = factura.FacturaId;
                dto.NroFactura = factura.NumeroFact.ToString();
                dto.FechaFactura = factura.FechaEmision;
                dto.ValorVenta = factura.ValorVenta;
                dto.PrecioVenta = (double) (factura.MontoIGV + (decimal) factura.ValorVenta);
                dto.Estado = factura.EstadoFacturacion;
                dto.NombreCompletoCliente = factura.TB_VT_Clientes.ApellidoPaterno + ", " + factura.TB_VT_Clientes.Nombre;

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
                dto.Id = factura.FacturaId;
                dto.NroFactura = factura.NumeroFact.ToString();
                dto.FechaFactura = factura.FechaEmision;
                dto.ValorVenta = factura.ValorVenta;
                dto.PrecioVenta = (double)(factura.MontoIGV + (decimal)factura.ValorVenta);
                dto.Estado = factura.EstadoFacturacion;
                dto.NombreCompletoCliente = factura.TB_VT_Clientes.ApellidoPaterno + ", " + factura.TB_VT_Clientes.Nombre;
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
                dto.Id = detalle.FacturaDetalleId;
                dto.NroFactura = detalle.TB_VT_Facturas.NumeroFact.ToString();
                dto.IdProducto = detalle.TB_AL_Productos.ProductoId;
                dto.NombreProducto = detalle.TB_AL_Productos.Nombre;
                dto.PrecioVentaProducto = detalle.TB_AL_Productos.PrecioListaVenta;
                dto.EstadoProducto = detalle.TB_AL_Productos.Estado;
                dto.FechaFactura = detalle.TB_VT_Facturas.FechaEmision;
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
                dto.Id = detalle.FacturaDetalleId;
                dto.NroFactura = detalle.TB_VT_Facturas.NumeroFact.ToString();
                dto.NombreCliente = detalle.TB_VT_Facturas.TB_VT_Clientes.ApellidoPaterno + ", " + detalle.TB_VT_Facturas.TB_VT_Clientes.Nombre;
                dto.IdProducto = detalle.TB_AL_Productos.ProductoId;
                dto.NombreProducto = detalle.TB_AL_Productos.Nombre;
                dto.PrecioVentaProducto = detalle.TB_AL_Productos.PrecioListaVenta;
                dto.EstadoProducto = detalle.TB_AL_Productos.Estado;
                dto.FechaFactura = detalle.TB_VT_Facturas.FechaEmision;

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
                dto.Id = detalle.FacturaDetalleId;
                dto.NroFactura = detalle.TB_VT_Facturas.NumeroFact.ToString();
                dto.FechaFactura = detalle.TB_VT_Facturas.FechaEmision;
                dto.IdProducto = detalle.TB_AL_Productos.ProductoId;
                dto.NombreProducto = detalle.TB_AL_Productos.Nombre;
                dto.PrecioVentaProducto = detalle.TB_AL_Productos.PrecioListaVenta;
                dto.EstadoProducto = detalle.TB_AL_Productos.Estado;
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
