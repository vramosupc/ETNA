using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.PV
{
    public class GestorPlantillas
    {
        public List<Plantilla> Listar()
        {
            var context = new ETNADbModelContainer();
            return context.Plantillas.ToList();
        }

        public int InsertarPlantilla(string descripcion, string estado, int tipoPlantillaId)
        {
            var context = new ETNADbModelContainer();
            var objPlantilla = new Plantilla();
            objPlantilla.Descripcion = descripcion;
            objPlantilla.Estado = estado;
            objPlantilla.TipoPlantilla = context.TiposPlantilla.Find(tipoPlantillaId);
            context.Plantillas.Add(objPlantilla);
            context.SaveChanges();
            return objPlantilla.Id;
        }

        public bool EditarPlantilla(int idPlantilla, string descripcion, string estado, int tipoPlantillaId)
        {
            var context = new ETNADbModelContainer();
            var plantilla = context.Plantillas.Find(idPlantilla);
            plantilla.Descripcion = descripcion;
            plantilla.Estado = estado;
            plantilla.TipoPlantilla = context.TiposPlantilla.Find(tipoPlantillaId);

            context.SaveChanges();
            return true;
        }
    }
}
