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
    
    public partial class DocumentoReferencia
    {
        public DocumentoReferencia()
        {
            this.Kardex = new HashSet<Kardex>();
        }
    
        public int Id { get; set; }
        public string IdentificadorDocumento { get; set; }
        public System.DateTime FechaElaboracion { get; set; }
        public string Observaciones { get; set; }
    
        public virtual Almacen Almacen { get; set; }
        public virtual Empleado Empleado { get; set; }
        public virtual ICollection<Kardex> Kardex { get; set; }
    }
}
