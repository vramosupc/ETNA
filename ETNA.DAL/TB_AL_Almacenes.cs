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
    
    public partial class TB_AL_Almacenes
    {
        public TB_AL_Almacenes()
        {
            this.TB_AL_Kardex = new HashSet<TB_AL_Kardex>();
            this.TB_AL_DocumentosReferencia = new HashSet<TB_AL_DocumentosReferencia>();
            this.TB_RH_Empleados = new HashSet<TB_RH_Empleados>();
        }
    
        public int AlmacenId { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public int Tipo { get; set; }
        public int AreaEnM2 { get; set; }
    
        public virtual ICollection<TB_AL_Kardex> TB_AL_Kardex { get; set; }
        public virtual ICollection<TB_AL_DocumentosReferencia> TB_AL_DocumentosReferencia { get; set; }
        public virtual ICollection<TB_RH_Empleados> TB_RH_Empleados { get; set; }
    }
}
