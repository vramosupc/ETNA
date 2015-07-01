using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.PV
{
    public class PlantillaViewModel
    {

        [Key]
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public string Estado { get; set; }

    }
}