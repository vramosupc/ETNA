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
    
    public partial class TB_PV_Reclamos
    {
        public TB_PV_Reclamos()
        {
            this.TB_PV_InformesReclamo = new HashSet<TB_PV_InformesReclamo>();
        }
    
        public int ReclamoId { get; set; }
        public string CodigoReclamo { get; set; }
        public System.DateTime FechaHoraReclamo { get; set; }
        public string Motivo { get; set; }
        public string Detalle { get; set; }
        public string Observaciones { get; set; }
        public Nullable<System.DateTime> FechaRespuesta { get; set; }
        public string Estado { get; set; }
        public int RegistradoPorId { get; set; }
        public int FacturaDetalleId { get; set; }
    
        public virtual ICollection<TB_PV_InformesReclamo> TB_PV_InformesReclamo { get; set; }
        public virtual TB_RH_Empleados TB_RH_Empleados { get; set; }
        public virtual TB_VT_FacturaDetalles TB_VT_FacturaDetalles { get; set; }
    }
}
