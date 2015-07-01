using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ETNA.DTOs.FB
{
    [DataContract]
    public class LoteDto
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string NroLote { get; set; }
        [DataMember]
        public System.DateTime FechaCreacion { get; set; }
        [DataMember]
        public string DescripcionTipoLote { get; set; }
    }
}
