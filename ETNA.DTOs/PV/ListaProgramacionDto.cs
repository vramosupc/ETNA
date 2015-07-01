using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using ETNA.Domain;

namespace ETNA.DTOs.PV
{
    [DataContract]
    class ListaProgramacionDto
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string Periodicidad { get; set; }

        [DataMember]
        public System.DateTime FechaInicio { get; set; }

        [DataMember]
        public System.DateTime FechaFin { get; set; }

        [DataMember]
        public double PorcentajeEncuestados { get; set; }

        [DataMember]
        public string Descripcion { get; set; }

        [DataMember]
        public string Estado { get; set; }

        [DataMember]
        public short DiasVigencia { get; set; }
    }
}
