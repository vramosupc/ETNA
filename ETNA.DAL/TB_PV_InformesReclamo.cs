//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ETNA.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class TB_PV_InformesReclamo
    {
        public int InformeReclamoId { get; set; }
        public string CodigoInforme { get; set; }
        public string Descripcion { get; set; }
        public string DetalleInforme { get; set; }
        public System.DateTime FechaAprobacion { get; set; }
        public System.DateTime FechaElaboracion { get; set; }
        public string ObservacionAprobador { get; set; }
        public string Estado { get; set; }
        public int ReclamoId { get; set; }
        public int ElaboradoPorId { get; set; }
        public Nullable<int> AprobadoPorId { get; set; }
    
        public virtual TB_RH_Empleados TB_RH_Empleados { get; set; }
        public virtual TB_RH_Empleados TB_RH_Empleados1 { get; set; }
        public virtual TB_PV_Reclamos TB_PV_Reclamos { get; set; }
    }
}