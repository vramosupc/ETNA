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
    
    public partial class TB_EX_FormatoDocumento
    {
        public int CodigoFormato { get; set; }
        public string Descripcion { get; set; }
        public Nullable<System.DateTime> FechaRegistro { get; set; }
        public string FormatoDocumento { get; set; }
        public Nullable<int> CodigoPickingList { get; set; }
    
        public virtual TB_EX_PackingList TB_EX_PackingList { get; set; }
    }
}
