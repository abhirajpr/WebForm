using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class SendMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SendEMail()
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(TextBox1.Text);
            mail.From = new MailAddress("abhiraj.mec@gmail.com");
                                                                                                        string pass = "*******";
            mail.Subject = TextBox2.Text;
            string Body = TextBox3.Text;
            mail.Body = Body;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("abhiraj.mec", pass);

            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SendEMail();
        }
    }
}
