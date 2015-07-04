using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.PV
{
    public class GestorProgramaciones
    {
        public List<Programacion> Listar()
        {
            var context = new ETNADbModelContainer();
            return context.Programaciones.ToList();
        }

        public int InsertarProgramacion(string codigoProgramacion, string periodicidad, DateTime fechaInicio, DateTime fechaFin, double porcentajeEncuestados, string descripcion, string estado, short diasVigencia, int plantillaId)
        {
            var context = new ETNADbModelContainer();
            var objProgramacion = new Programacion();
            objProgramacion.CodigoProgramacion = "PE" + DateTime.Now.Year.ToString("0000") + objProgramacion.Id.ToString("00000");
            objProgramacion.Periodicidad = periodicidad;
            objProgramacion.FechaInicio = fechaInicio;
            objProgramacion.FechaFin = fechaFin;
            objProgramacion.PorcentajeEncuestados = porcentajeEncuestados;
            objProgramacion.Descripcion = descripcion;
            objProgramacion.Estado = "A";
            objProgramacion.DiasVigencia = diasVigencia;
            objProgramacion.Plantilla = context.Plantillas.Find(plantillaId);
            context.Programaciones.Add(objProgramacion);
            context.SaveChanges();
            var programa = context.Programaciones.Find(objProgramacion.Id);
            programa.CodigoProgramacion = "PE" + DateTime.Now.Year.ToString("0000") + objProgramacion.Id.ToString("00000");
            context.SaveChanges();
            return objProgramacion.Id;
        }

        public bool EditarProgramacion(int idPrograma, string codigoProgramacion, string periodicidad, DateTime fechaInicio, DateTime fechaFin, double porcentajeEncuestados, string descripcion, string estado,short diasVigencia,int plantillaId)
        {
            var context = new ETNADbModelContainer();
            var programa = context.Programaciones.Find(idPrograma);
          //  if (programa.Estado.Equals("I"))
          //  {
                programa.Periodicidad = periodicidad;
                programa.FechaInicio = fechaInicio;
                programa.FechaFin = fechaFin;
                programa.PorcentajeEncuestados = porcentajeEncuestados;
                programa.Descripcion = descripcion;
                programa.DiasVigencia = diasVigencia;
                programa.Estado = estado;
                programa.Plantilla = context.Plantillas.Find(plantillaId);

                context.SaveChanges();

                return true;
          //  }
          //  else
          
            //{
              //  return false;
           // }
        }

        public Programacion ObtenerProgramacion(int idProgramacion)
        {
            var context = new ETNADbModelContainer();
            return context.Programaciones.Find(idProgramacion);
        }
    }
}
