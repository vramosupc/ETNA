using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.PV
{
    public class GestorFacturas
    {
        public static int TamanoPaginas = 5;

        public List<Factura> Listar()
        {
            var context = new ETNADbModelContainer();
            return context.Facturas.ToList();
        }

        public Factura ObtenerFactura(int idFactura)
        {
            var context = new ETNADbModelContainer();
            return context.Facturas.Find(idFactura);
        }

        public List<FacturaDetalle> ListarDetalle(int idFactura)
        {
            var context = new ETNADbModelContainer();
            return context.FacturaDetalles.Where(d => d.Factura.Id == idFactura).ToList();
        }

        public List<int> NroPaginasPorDetalleNroFactura(string nroFactura)
        {
            var context = new ETNADbModelContainer();
            var list = new List<int>();

            var total = context.FacturaDetalles.Where(d => d.Factura.NroFactura.Contains(nroFactura)).ToList().Count;
            list.Add(total);
            list.Add((total / GestorFacturas.TamanoPaginas) + 1);
            return list;
        }

        public List<FacturaDetalle> ListarDetallePorNroFactura(string nroFactura, int nropagina = 1)
        {
            var param1 = new SqlParameter("@num_pagina", (nropagina<1?1:nropagina));
            var param2 = new SqlParameter("@tam_pagina", GestorFacturas.TamanoPaginas); //Tamaño de registros 10 by default
            var param3 = new SqlParameter("@nro_factura", nroFactura);

            var context = new ETNADbModelContainer();
            var detalleObj = context.Database.SqlQuery<FacturaDetalle>("exec GetPaginasRowNumber @num_pagina, @tam_pagina, @nro_factura", param1, param2, param3).ToList<FacturaDetalle>();

            var listaDetalle = new List<FacturaDetalle>();
            foreach (var detalle in detalleObj)
            {
                var factdeta = this.ObtenerDetalleFactura(detalle.Id);
                listaDetalle.Add(factdeta);
            }
            return listaDetalle;
            //return context.FacturaDetalles.Where(d => d.Factura.NroFactura.Contains(nroFactura)).ToList();
            //(d =>  d.Factura.NroFactura == nroFactura).ToList();
        }

        public FacturaDetalle ObtenerDetalleFactura(int idDetalle)
        {
            var context = new ETNADbModelContainer();
            return context.FacturaDetalles.Find(idDetalle);
        }
    }
}
