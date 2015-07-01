using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ETNA.DTOs.PV;

namespace ETNA.WCF.PV
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IFacturas" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IFacturas
    {
        [OperationContract]
        List<FacturaDto> ListaFacturas();

        [OperationContract]
        FacturaDto ObtenerFactura(int idFactura);

        [OperationContract]
        List<FacturaDetalleDto> ListaFacturaDetalles(int idFactura);

        [OperationContract]
        List<int> NroPaginasPorDetalleNroFactura(string nroFactura);

        [OperationContract]
        List<FacturaDetalleDto> ListarDetallePorNroFactura(string nroFactura, int nroPagina);

        [OperationContract]
        FacturaDetalleDto ObtenerFacturaDetalle(int idDetalle);
    }
}
