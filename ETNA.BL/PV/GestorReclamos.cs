using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;
using ETNA.Common;


namespace ETNA.BL.PV
{
    public class GestorReclamos
    {

        public int InsertarReclamo(string codigoReclamo, DateTime fechaHoraReclamo, string motivo,
            string detalle, string observaciones, DateTime fechaRespuesta, string estado, int idFacturaDetalle)
        {
            var context = new ETNADbModelContainer();
            var newReclamo = new Reclamo();
            try
            {
           
            newReclamo.CodigoReclamo = "RE"+DateTime.Now.Year.ToString("0000")+newReclamo.Id.ToString("00000");
            newReclamo.FechaHoraReclamo = DateTime.Now;
            newReclamo.Motivo = motivo;
            newReclamo.Detalle = detalle;
            newReclamo.Observaciones = observaciones;
            newReclamo.FechaRespuesta = DateTime.Now.AddDays(5);
            newReclamo.Estado = "P";
            newReclamo.RegistradoPor = context.Empleados.Find(1);
            newReclamo.FacturaDetalle = context.FacturaDetalles.Find(idFacturaDetalle);
            context.Reclamos.Add(newReclamo);
            context.SaveChanges();
            var reclamo = context.Reclamos.Find(newReclamo.Id);
            reclamo.CodigoReclamo = "RE" + DateTime.Now.Year.ToString("0000") + newReclamo.Id.ToString("00000");
            context.SaveChanges();
             }
            catch (NullReferenceException e)
            {
                Console.WriteLine("{0} Exception caught.", e);
            }
            return newReclamo.Id;
        }

        public bool EditarReclamo(int idReclamo, string codigoReclamo, DateTime fechaHoraReclamo, string motivo,
            string detalle, string observaciones, DateTime fechaRespuesta, string estado,int idFacturaDetalle)
        {
            var context = new ETNADbModelContainer();
       
             var reclamo = context.Reclamos.Find(idReclamo);
             try
             {
            reclamo.Motivo = motivo;
            reclamo.Detalle = detalle;
            reclamo.Observaciones = observaciones;
            reclamo.Estado = estado;
            reclamo.FacturaDetalle = context.FacturaDetalles.Find(idFacturaDetalle);
            context.SaveChanges();
             }
            catch (NullReferenceException e)
            {
                Console.WriteLine("{0} Exception caught.", e);
            }
            return true;
        }

        public List<Reclamo> Listar()
        {
            var context = new ETNADbModelContainer();
            return context.Reclamos.ToList();
        }

        public Reclamo ObtenerReclamo(int idReclamo)
        {
            var context = new ETNADbModelContainer();
            return context.Reclamos.Find(idReclamo);
        }

 

}
}
