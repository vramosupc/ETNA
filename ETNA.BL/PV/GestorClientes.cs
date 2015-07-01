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
        public List<Cliente> Listar()
        {
            var context = new ETNADbModelContainer();
            return context.Clientes.ToList();
        }

        public Cliente ObtenerCliente(int idCliente)
        {
            var context = new ETNADbModelContainer();
            return context.Clientes.Find(idCliente);
        }
    }
}
