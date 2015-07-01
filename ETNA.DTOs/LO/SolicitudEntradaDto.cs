using System;
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace ETNA.DTOs.LO
{
    [DataContract]
    public class SolicitudEntradaDto
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public DateTime FechaElaboracion { get; set; }

        [DataMember]
        public string TipoEntrada { get; set; }

        [DataMember]
        public string NombreEmpleado { get; set; }

        [DataMember]
        public List<DetalleSolicitudEntradaDto> Detalle { get; set; }
    }
}
