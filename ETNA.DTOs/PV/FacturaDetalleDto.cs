using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ETNA.DTOs.PV
{
    [DataContract]
    public class FacturaDetalleDto
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public List<FacturaDto> Factura { get; set; }

        [DataMember]
        public string NroFactura { get; set; }
        [DataMember]
        public System.DateTime FechaFactura { get; set; }


        [DataMember]
        public List<ProductoDto> Producto { get; set; }

        [DataMember]
        public int IdProducto { get; set; }

        [DataMember]
        public string NombreProducto { get; set; }
        
        [DataMember]
        public double PrecioVentaProducto { get; set; }
        
        [DataMember]
        public int EstadoProducto { get; set; }

        [DataMember]
        public string NombreCliente { get; set; }
    }
}
