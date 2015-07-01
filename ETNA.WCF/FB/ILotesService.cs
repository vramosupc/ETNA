using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ETNA.DTOs.FB;

namespace ETNA.WCF.FB
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "ILotesService" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface ILotesService
    {
        [OperationContract]
        int InsertarLote(string nroLote, int idTipoLote);

        [OperationContract]
        bool EditarLote(int idLote, string nroLote);

        [OperationContract]
        bool EliminarLote(int idLote);

        [OperationContract]
        List<LoteDto> ListaLotes();
    }
}
