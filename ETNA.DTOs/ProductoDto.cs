using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ETNA.DTOs
{
    [DataContract]
    public class ProductoDto
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Nombre { get; set; }
        [DataMember]
        public string DescripcionCorta { get; set; }
        [DataMember]
        public string DescripcionLarga { get; set; }
        [DataMember]
        public double PrecioListaCompra { get; set; }
        [DataMember]
        public double PrecioListaVenta { get; set; }
        [DataMember]
        public int Estado { get; set; }
    }
}
