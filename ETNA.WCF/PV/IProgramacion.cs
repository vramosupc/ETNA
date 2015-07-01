using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ETNA.DTOs.PV;

namespace ETNA.WCF.PV
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IProgramacion" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IProgramacion
    {

        [OperationContract]
        int InsertarProgramacion(string codigoProgramacion, string periodicidad, DateTime fechaInicio, DateTime fechaFin, double porcentajeEncuestados, string descripcion, string estado, short diasVigencia, int plantillaId);

        [OperationContract]
        bool EditarProgramacion(int idPrograma, string codigoProgramacion, string periodicidad, DateTime fechaInicio, DateTime fechaFin, double porcentajeEncuestados, string descripcion, string estado, short diasVigencia, int plantillaId);

        [OperationContract]
        List<ProgramacionDto> ListaProgramaciones();

        [OperationContract]
        ProgramacionDto ObtenerProgramacion(int idPrograma);
    }
}
