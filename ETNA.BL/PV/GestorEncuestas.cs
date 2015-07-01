using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.PV
{
    class GestorEncuestas
    {
        public List<Encuesta> Listar()
        {
            var context = new ETNADbModelContainer();
            return context.Encuestas.ToList();
        }

        public int InsertarEncuesta(string titulo, DateTime fechaInicio, DateTime fechaRespuesta, int clienteCodigo)
        {
            var context = new ETNADbModelContainer();
            var objEncuesta = new Encuesta();
            objEncuesta.FechaInicio = fechaInicio;
            objEncuesta.FechaRespuesta = fechaRespuesta;
            objEncuesta.Titulo = titulo;
            objEncuesta.Cliente = context.Clientes.Find(clienteCodigo);
            context.Encuestas.Add(objEncuesta);
            context.SaveChanges();
            return objEncuesta.Id;
        }

        public bool EditarEncuesta(int idEncuesta, string titulo, DateTime fechaInicio, DateTime fechaRespuesta, int clienteCodigo)
        {
            var context = new ETNADbModelContainer();
            var encuesta = context.Encuestas.Find(idEncuesta);
            encuesta.Titulo = titulo;
            encuesta.FechaInicio = fechaInicio;
            encuesta.FechaRespuesta = fechaRespuesta;
            encuesta.Cliente = context.Clientes.Find(clienteCodigo);

            context.SaveChanges();
            return true;
        }
    }
}
