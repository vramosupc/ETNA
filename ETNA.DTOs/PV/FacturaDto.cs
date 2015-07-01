using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ETNA.DTOs.PV
{
    [DataContract]
    public class FacturaDto
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string NroFactura { get; set; }

        [DataMember]
        public System.DateTime FechaFactura { get; set; }

        [DataMember]
        public double ValorVenta { get; set; }

        [DataMember]
        public double PrecioVenta { get; set; }

        [DataMember]
        public string Estado { get; set; }

        [DataMember]
        public List<ClienteDto> Cliente { get; set; }

        [DataMember]
        public string NombreCompletoCliente { get; set; }
    }
}
