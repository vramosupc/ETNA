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
    
    public partial class TB_PR_LoteFabricacion
    {
        public int LoteId { get; set; }
        public string SolId { get; set; }
        public string CodigoProducto { get; set; }
        public Nullable<int> CantInsumos { get; set; }
        public Nullable<int> CantMaquina { get; set; }
        public Nullable<int> CantPersonal { get; set; }
        public Nullable<System.DateTime> FecSol { get; set; }
        public Nullable<System.DateTime> FecInicial { get; set; }
        public Nullable<System.DateTime> FecFinal { get; set; }
        public string SolicitanteId { get; set; }
        public Nullable<int> EstLote { get; set; }
        public string GlosaOrd { get; set; }
    }
}
