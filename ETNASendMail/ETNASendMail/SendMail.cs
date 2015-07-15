﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;

namespace ConsoleApplicationETNASendMail
{
    class SendMail
    {
        public static Boolean ETNASendMail(string plantilla, string cuentaDeCorreo)
        {
            try
            {
                //Configuración del Mensaje
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                //Especificamos el correo desde el que se enviará el Email y el nombre de la persona que lo envía
                mail.From = new MailAddress("spacejamm@gmail.com", "Juan Mory", Encoding.UTF8);
                //Aquí ponemos el asunto del correo
                mail.Subject = "Encuestas ETNA POSTVENTA";
                //Aquí ponemos el mensaje que incluirá el correo
                mail.Body = "Encuesta ETNA"+"  :  "+plantilla;
                //Especificamos a quien enviaremos el Email, no es necesario que sea Gmail, puede ser cualquier otro proveedor
                mail.To.Add(cuentaDeCorreo);
                ////Si queremos enviar archivos adjuntos tenemos que especificar la ruta en donde se encuentran
                //mail.Attachments.Add(new Attachment(@"C:\Documentos\carta.docx"));

                //Configuracion del SMTP
                SmtpServer.Port = 587; //Puerto que utiliza Gmail para sus servicios
                //Especificamos las credenciales con las que enviaremos el mail
                SmtpServer.Credentials = new System.Net.NetworkCredential("spacejamm@gmail.com", "J@MM1409");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
                return true;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }
    }
}
