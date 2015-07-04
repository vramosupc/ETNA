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
    
    public partial class TB_VT_Facturas
    {
        public TB_VT_Facturas()
        {
            this.TB_VT_FacturaDetalles = new HashSet<TB_VT_FacturaDetalles>();
        }
    
        public int FacturaId { get; set; }
        public Nullable<int> NumeroFact { get; set; }
        public int ClienteId { get; set; }
        public System.DateTime FechaEmision { get; set; }
        public System.DateTime FechaEntrega { get; set; }
        public int ModalidadCreditoId { get; set; }
        public System.DateTime FechaPago { get; set; }
        public bool Credito { get; set; }
        public string Direccion { get; set; }
        public int EmpleadoId { get; set; }
        public string Observacion { get; set; }
        public double ValorVenta { get; set; }
        public bool PrecioIncluyeImpuesto { get; set; }
        public string EstadoFacturacion { get; set; }
        public string DireccionEntrega { get; set; }
        public Nullable<decimal> Subtotal { get; set; }
        public Nullable<decimal> MontoIGV { get; set; }
        public Nullable<decimal> Total { get; set; }
        public string Observaciones { get; set; }
        public Nullable<System.DateTime> FechaRegistro { get; set; }
        public Nullable<System.DateTime> FechaVencimiento { get; set; }
        public Nullable<int> CodigoSolAtencion { get; set; }
        public Nullable<int> CodigoReq { get; set; }
        public Nullable<int> CodigoFormato { get; set; }
    
        public virtual TB_EX_SolicitudAtencion TB_EX_SolicitudAtencion { get; set; }
        public virtual TB_ModalidadCredito TB_ModalidadCredito { get; set; }
        public virtual TB_Requerimiento TB_Requerimiento { get; set; }
        public virtual TB_RH_Empleados TB_RH_Empleados { get; set; }
        public virtual TB_VT_Clientes TB_VT_Clientes { get; set; }
        public virtual ICollection<TB_VT_FacturaDetalles> TB_VT_FacturaDetalles { get; set; }
    }
}
