using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.PV
{
    public class FacturaViewModel
    {
        [Key]
        public int Id { get; set; }
        [DisplayName("Nro de Factura")]
        public string NroFactura { get; set; }
        [DisplayName("Fecha Factura")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime FechaFactura { get; set; }
        [DisplayName("Valor de Venta")]
        public double ValorVenta { get; set; }
        [DisplayName("Precio de Venta")]
        public double PrecioVenta { get; set; }
        [DisplayName("Estado")]
        public string Estado { get; set; }
        [DisplayName("Cliente")]
        public string NombreCompletoCliente { get; set; }
    }
}