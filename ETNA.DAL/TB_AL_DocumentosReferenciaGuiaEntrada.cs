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
    
    public partial class TB_AL_DocumentosReferenciaGuiaEntrada
    {
        public int GuiaEntradaId { get; set; }
        public int SolicitudEntradaId { get; set; }
    
        public virtual TB_AL_SolicitudesEntrada TB_AL_SolicitudesEntrada { get; set; }
    }
}
