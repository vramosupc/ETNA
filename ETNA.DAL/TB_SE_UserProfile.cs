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
    
    public partial class TB_SE_UserProfile
    {
        public TB_SE_UserProfile()
        {
            this.TB_RH_Empleados = new HashSet<TB_RH_Empleados>();
            this.TB_SE_Roles = new HashSet<TB_SE_Roles>();
        }
    
        public int UserId { get; set; }
        public string UserName { get; set; }
    
        public virtual ICollection<TB_RH_Empleados> TB_RH_Empleados { get; set; }
        public virtual ICollection<TB_SE_Roles> TB_SE_Roles { get; set; }
    }
}
