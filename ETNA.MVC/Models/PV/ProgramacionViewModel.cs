using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.ComponentModel.DataAnnotations;
using System.ComponentModel;


namespace ETNA.MVC.Models.PV
{
    public class ProgramacionViewModel
    {

        [Key]
        public int Id { get; set; }
        [DisplayName("Código")]
        public string CodigoProgramacion { get; set; }

        public string Periodicidad { get; set; }
        [DisplayName("Período")]
        public string DescripcionPeriodicidad { get; set; }
        
        [DisplayName("Inicio Programación")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public System.DateTime FechaInicio { get; set; }
        [DisplayName("Fin Programación")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public System.DateTime FechaFin { get; set; }
        [DisplayName("% de Encuestados")]
        [Range(1, 100)]
        public double PorcentajeEncuestados { get; set; }
        [DisplayName("Descripción")]
        public string Descripcion { get; set; }

        public string Estado { get; set; }
        [DisplayName("Estado Programación")]
        public string DescripcionEstado { get; set; }
        
        [DisplayName("Días Vigencia Encuesta")]
        [Range(3,7)]
        public short DiasVigencia { get; set; }
        [DisplayName("Plantilla")]
        public int PlantillaId { get; set; }
        [DisplayName("Nombre Plantilla")]
        public string NombrePlantilla { get; set; }
 
    }
}