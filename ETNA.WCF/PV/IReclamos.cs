using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ETNA.Domain;
using ETNA.DTOs.PV;

namespace ETNA.WCF.PV
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IReclamos" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IReclamos
    {

        [OperationContract]
        int InsertarReclamo(string codigoReclamo, DateTime fechaHoraReclamo, string motivo,
            string detalle, string observaciones, DateTime fechaRespuesta, string estado,int idFacturaDetalle);

        [OperationContract]
        bool EditarReclamo(int idReclamo, string codigoReclamo, DateTime fechaHoraReclamo, string motivo,
            string detalle, string observaciones, DateTime fechaRespuesta, string estado, int idFacturaDetalle);

        [OperationContract]
        List<ReclamoDto> ListaReclamos();


        [OperationContract]
        ReclamoDto ObtenerReclamo(int idReclamo);
    }
}
