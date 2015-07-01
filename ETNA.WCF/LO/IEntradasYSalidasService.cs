using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ETNA.DTOs;
using ETNA.DTOs.LO;

namespace ETNA.WCF.LO
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IEntradasYSalidasService" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IEntradasYSalidasService
    {
        [OperationContract]
        List<AlmacenDto> ObtenerAlmacenesPorEmpleado(int idEmpleado);

        [OperationContract]
        List<ListaSolicitudEntradaDto> ObtenerSolicitudesEntrada(int idSolicitud, int estadoSolicitud,
            DateTime fechaInicio, DateTime fechaFin, int idEmpleado, int tipoEntrada);

        [OperationContract]
        SolicitudEntradaDto ObtenerSolicitudEntrada(int idSolicitud);

        [OperationContract]
        bool GenerarGuiaEntrada(int idSolicitud, int idAlmacen, int idEmpleado);
    }
}
