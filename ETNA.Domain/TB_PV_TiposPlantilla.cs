//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ETNA.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class TB_PV_TiposPlantilla
    {
        public TB_PV_TiposPlantilla()
        {
            this.TB_PV_Plantillas = new HashSet<TB_PV_Plantillas>();
        }
    
        public int TipoPlantillaId { get; set; }
        public string Descripcion { get; set; }
    
        public virtual ICollection<TB_PV_Plantillas> TB_PV_Plantillas { get; set; }
    }
}
