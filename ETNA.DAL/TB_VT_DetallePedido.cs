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
    
    public partial class TB_VT_DetallePedido
    {
        public int PedidoId { get; set; }
        public Nullable<int> ProductoId { get; set; }
        public Nullable<decimal> Cantidad { get; set; }
        public Nullable<decimal> Total { get; set; }
        public string Observacion { get; set; }
        public int DetallePedidoId { get; set; }
    
        public virtual TB_AL_Productos TB_AL_Productos { get; set; }
        public virtual TB_VT_Pedido TB_VT_Pedido { get; set; }
    }
}
