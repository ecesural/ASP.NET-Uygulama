using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspTemplateUyg
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        bool mailAt(string konu, string icerik, string isim, string eMailAdress)
        {
            MailMessage ePosta = new MailMessage();
            ePosta.From = new MailAddress("smartbro405@gmail.com");
            ePosta.To.Add("tncykurt@gmail.com");
            ePosta.To.Add("emreyalnizlar@gmail.com");
            ePosta.To.Add("caglarsuren@gmail.com");
            ePosta.To.Add("m.ecesural@gmail.com");
            ePosta.Subject = konu;
            ePosta.Body = icerik;

            SmtpClient smtp = new SmtpClient();
            smtp.Credentials = new NetworkCredential("smartbro405@gmail.com", "istanbul34");
            smtp.Port = 587;
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;// Güvenlik sertifikası

            try
            {
                smtp.Send(ePosta);
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            if (mailAt(txtKonu.Text, txtMesaj.Text, txtIsim.Text, txtEmail.Text))
            {
                txtKonu.Text = txtMesaj.Text = txtIsim.Text = txtEmail.Text = "";
            }
        }
    }
}