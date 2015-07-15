using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace ConsoleApplicationETNASendMail
{
    class Conexion
    {
        private static string correo;
        private static string nomEncuesta;
        public static void getConexion()
        {
            //string server = "JUANCHO-PC\SQLEXPRESS";
            //Traer PLANTILLA
            try
            {
                SqlConnection cn = new SqlConnection("Data Source=localhost;Initial Catalog=INTEGRADO;User Id=sa;Password=J@MM1409;Integrated Security=True");
                cn.Open();
                string plantilla = "SELECT Descripcion FROM TB_PV_Plantillas WHERE PlantillaID=1;";

                SqlCommand cmdplantilla = new SqlCommand(plantilla, cn);
                SqlDataReader readerplantilla = cmdplantilla.ExecuteReader();
                
                try
                {
                    while (readerplantilla.Read())
                    {
                        nomEncuesta = (String.Format(" {0}",
                            readerplantilla[0]));
                        Console.WriteLine(nomEncuesta);
                    }
                }
                catch (SqlException e)
                {
                    Console.WriteLine(e.Message);
                }
                
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            //Traer Correos
            try
            {
                SqlConnection cn = new SqlConnection("Data Source=localhost;Initial Catalog=INTEGRADO;User Id=sa;Password=J@MM1409;Integrated Security=True");
                cn.Open();
                string email = "SELECT Email FROM TB_VT_Clientes WHERE ClienteId in(1,2,3);";
                SqlCommand cmdemail = new SqlCommand(email, cn);
                SqlDataReader readeremail = cmdemail.ExecuteReader();

                try
                {
                    while (readeremail.Read())
                    {
                        correo = (String.Format(" {0}",
                        readeremail[0]));
                        Console.WriteLine(correo);
                    }
                    SendMail.ETNASendMail(nomEncuesta,correo);

                }
                catch (SqlException e)
                {
                    Console.WriteLine(e.Message);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
