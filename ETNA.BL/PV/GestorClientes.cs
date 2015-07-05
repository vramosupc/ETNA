using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.PV
{
    class GestorClientes
    {
        public List<TB_VT_Clientes> Listar()
        {
            var context = new INTEGRADOModelContainer();
            return context.TB_VT_Clientes.ToList();
        }

        public TB_VT_Clientes ObtenerCliente(int idCliente)
        {
            var context = new INTEGRADOModelContainer();
            return context.TB_VT_Clientes.Find(idCliente);
        }
    }
}
