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
    
    public partial class TB_TipoLotes
    {
        public TB_TipoLotes()
        {
            this.TB_Lotes = new HashSet<TB_Lotes>();
        }
    
        public int TipoLoteId { get; set; }
        public string Descripcion { get; set; }
    
        public virtual ICollection<TB_Lotes> TB_Lotes { get; set; }
    }
}
