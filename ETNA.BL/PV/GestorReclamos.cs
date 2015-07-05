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
            var context = new INTEGRADOModelContainer();
            var newReclamo = new TB_PV_Reclamos();
            try
            {
           
            newReclamo.CodigoReclamo = "RE"+DateTime.Now.Year.ToString("0000")+newReclamo.ReclamoId.ToString("00000");
            newReclamo.FechaHoraReclamo = DateTime.Now;
            newReclamo.Motivo = motivo;
            newReclamo.Detalle = detalle;
            newReclamo.Observaciones = observaciones;
            newReclamo.FechaRespuesta = DateTime.Now.AddDays(5);
            newReclamo.Estado = "P";
            newReclamo.TB_RH_Empleados= context.TB_RH_Empleados.Find(1);
                newReclamo.RegistradoPorId = newReclamo.TB_RH_Empleados.EmpleadoId;
            newReclamo.TB_VT_FacturaDetalles = context.TB_VT_FacturaDetalles.Find(idFacturaDetalle);
                newReclamo.FacturaDetalleId = newReclamo.TB_VT_FacturaDetalles.FacturaDetalleId;

            context.TB_PV_Reclamos.Add(newReclamo);
            context.SaveChanges();
            var reclamo = context.TB_PV_Reclamos.Find(newReclamo.ReclamoId);
            reclamo.CodigoReclamo = "RE" + DateTime.Now.Year.ToString("0000") + newReclamo.ReclamoId.ToString("00000");
            context.SaveChanges();
             }
            catch (NullReferenceException e)
            {
                Console.WriteLine("{0} Exception caught.", e);
            }
            return newReclamo.ReclamoId;
        }

        public bool EditarReclamo(int idReclamo, string codigoReclamo, DateTime fechaHoraReclamo, string motivo,
            string detalle, string observaciones, DateTime fechaRespuesta, string estado,int idFacturaDetalle)
        {
            var context = new INTEGRADOModelContainer();
       
             var reclamo = context.TB_PV_Reclamos.Find(idReclamo);
             try
             {
            reclamo.Motivo = motivo;
            reclamo.Detalle = detalle;
            reclamo.Observaciones = observaciones;
            reclamo.Estado = estado;
            reclamo.TB_VT_FacturaDetalles = context.TB_VT_FacturaDetalles.Find(idFacturaDetalle);
            reclamo.FacturaDetalleId = reclamo.TB_VT_FacturaDetalles.FacturaDetalleId;
            context.SaveChanges();
             }
            catch (NullReferenceException e)
            {
                Console.WriteLine("{0} Exception caught.", e);
            }
            return true;
        }

        public List<TB_PV_Reclamos> Listar()
        {
            var context = new INTEGRADOModelContainer();
            return context.TB_PV_Reclamos.ToList();
        }

        public TB_PV_Reclamos ObtenerReclamo(int idReclamo)
        {
            var context = new INTEGRADOModelContainer();
            return context.TB_PV_Reclamos.Find(idReclamo);
        }

 

}
}
