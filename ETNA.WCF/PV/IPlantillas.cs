using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ETNA.DTOs.PV;
namespace ETNA.WCF.PV
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IPlantillas" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IPlantillas
    {
        [OperationContract]
    
        List<PlantillaDto> ListaPlantillas();
    }
}
