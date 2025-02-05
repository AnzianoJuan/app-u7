using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)//bloque de codigo para corroborar si esta logueado o no
            {                               //asi no entra ningun ladri 
                Session.Add("Error","Debes loguearte para ingresar");
                Response.Redirect("Error.aspx" , false);
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            Usuario usuario;
            UsuarioNegocio negocio = new UsuarioNegocio();

            try
            {
                usuario = new Usuario(TextBoxUser.Text, TextBoxPass.Text, false);
                if (negocio.Loguear(usuario))
                {
                    Session.Add("Usuario", usuario);
                    Response.Redirect("Default.aspx", false);
                }
                //else
                //{
                //    Session.Add("Error","User o pass Incorrectos");
                //    Response.Redirect("Error.aspx", false);
                //}

            }
            catch (Exception ex)
            {

                Session.Add("Error", ex.ToString());
                Response.Redirect("Error.aspx");

            }

        }
    }
}