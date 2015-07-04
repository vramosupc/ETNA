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
    
    public partial class TB_RH_Empleados
    {
        public TB_RH_Empleados()
        {
            this.TB_AL_DocumentosReferencia = new HashSet<TB_AL_DocumentosReferencia>();
            this.TB_AL_SolicitudesEntrada = new HashSet<TB_AL_SolicitudesEntrada>();
            this.TB_PV_InformesReclamo = new HashSet<TB_PV_InformesReclamo>();
            this.TB_PV_InformesReclamo1 = new HashSet<TB_PV_InformesReclamo>();
            this.TB_PV_InformesResultado = new HashSet<TB_PV_InformesResultado>();
            this.TB_PV_Reclamos = new HashSet<TB_PV_Reclamos>();
            this.TB_VT_Facturas = new HashSet<TB_VT_Facturas>();
            this.TB_VT_Pedido = new HashSet<TB_VT_Pedido>();
            this.TB_AL_Almacenes = new HashSet<TB_AL_Almacenes>();
        }
    
        public int EmpleadoId { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Direccion { get; set; }
        public string Cargo { get; set; }
        public int UserId { get; set; }
        public int GrupoVentaId { get; set; }
        public string DocIdentidad { get; set; }
        public bool Activo { get; set; }
    
        public virtual ICollection<TB_AL_DocumentosReferencia> TB_AL_DocumentosReferencia { get; set; }
        public virtual ICollection<TB_AL_SolicitudesEntrada> TB_AL_SolicitudesEntrada { get; set; }
        public virtual ICollection<TB_PV_InformesReclamo> TB_PV_InformesReclamo { get; set; }
        public virtual ICollection<TB_PV_InformesReclamo> TB_PV_InformesReclamo1 { get; set; }
        public virtual ICollection<TB_PV_InformesResultado> TB_PV_InformesResultado { get; set; }
        public virtual ICollection<TB_PV_Reclamos> TB_PV_Reclamos { get; set; }
        public virtual TB_SE_UserProfile TB_SE_UserProfile { get; set; }
        public virtual ICollection<TB_VT_Facturas> TB_VT_Facturas { get; set; }
        public virtual ICollection<TB_VT_Pedido> TB_VT_Pedido { get; set; }
        public virtual ICollection<TB_AL_Almacenes> TB_AL_Almacenes { get; set; }
    }
}
