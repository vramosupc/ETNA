using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ETNA.DTOs.PV
{
    [DataContract]
    public class ClienteDto
    {
        [DataMember]
        public int Codigo { get; set; }

        [DataMember]
        public string Direccion { get; set; }

        [DataMember]
        public string DocIdentidad { get; set; }

        [DataMember]
        public string Apellidos { get; set; }

        [DataMember]
        public string Nombres { get; set; }

        [DataMember]
        public string Email { get; set; }
    }
}
