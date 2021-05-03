using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace projetoAPIS.Utils
{
    public class Support
    {
        public void sendEmail(string Assunto, string emailDestiny, string bodyMail)
        {
            MailMessage objMail = new MailMessage();
            objMail.To.Add(emailDestiny);
            objMail.From = new MailAddress(""); // Email 
            objMail.Body = bodyMail;
            objMail.Subject = Assunto;

            SmtpClient objSMTP = new SmtpClient();
            objSMTP.Host = "smtp.gmail.com";
            objSMTP.Port = 587;
            objSMTP.UseDefaultCredentials = false;
            objSMTP.Credentials = new NetworkCredential("", ""); //Email e Senha
            objSMTP.EnableSsl = true;
            objSMTP.Send(objMail);

        }
    }
}
