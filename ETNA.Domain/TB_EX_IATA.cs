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
    
    public partial class TB_EX_IATA
    {
        public string CodigoIata { get; set; }
        public int CodigoPais { get; set; }
        public string DescripcionIata { get; set; }
    
        public virtual TB_MA_Pais TB_MA_Pais { get; set; }
    }
}
