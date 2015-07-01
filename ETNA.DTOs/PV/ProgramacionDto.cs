using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ETNA.DTOs.PV
{
    [DataContract]
    public class ProgramacionDto
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string CodigoProgramacion { get; set; }
        
        [DataMember]
        public string Periodicidad { get; set; }
        [DataMember]
        public string DescripcionPeriodicidad { get; set; }

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
        public string DescripcionEstado { get; set; }

        [DataMember]
        public short DiasVigencia { get; set; }

        [DataMember]
        public int PlantillaId { get; set; }

        [DataMember]
        public string NombrePlantilla { get; set; }
    }
}
