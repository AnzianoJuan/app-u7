using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class EnvioMails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            EmailService emailService = new EmailService();

            emailService.armarCorreo(TextBoxMail.Text, TextBoxAsunto.Text, TextBoxMensaje.Text);

            try
            {
                emailService.mandarMail();
            }
            catch (Exception ex)
            {

                Session.Add("Error", ex);
            }



        }

        protected void BtnAceptarEnvio_Click(object sender, EventArgs e)
        {

        }
    }
}