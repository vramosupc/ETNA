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
    
    public partial class TB_SE_Roles
    {
        public TB_SE_Roles()
        {
            this.TB_SE_UserProfile = new HashSet<TB_SE_UserProfile>();
        }
    
        public int RoleId { get; set; }
        public string RoleName { get; set; }
        public string RoleDescription { get; set; }
    
        public virtual ICollection<TB_SE_UserProfile> TB_SE_UserProfile { get; set; }
    }
}
