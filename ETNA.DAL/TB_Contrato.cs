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
    
    public partial class TB_Contrato
    {
        public int ContratoId { get; set; }
        public Nullable<System.DateTime> FechaContrato { get; set; }
        public string Moneda { get; set; }
        public string Observaciones { get; set; }
        public string DocumentoAdjunto { get; set; }
        public string Estado { get; set; }
        public Nullable<int> CodigoSolAtencion { get; set; }
    
        public virtual TB_EX_SolicitudAtencion TB_EX_SolicitudAtencion { get; set; }
    }
}
