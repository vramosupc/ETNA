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
    
    public partial class TB_CA_OrdenCalidad
    {
        public int IdOrdenCalidad { get; set; }
        public Nullable<System.DateTime> FchOrdenCalidad { get; set; }
        public Nullable<int> NumeroHoras { get; set; }
        public string EstadoOrdenCalidad { get; set; }
        public Nullable<int> IDDetallePlanCalidad { get; set; }
        public Nullable<int> IDSolicitud { get; set; }
    }
}
