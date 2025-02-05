using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Acceso_Datos;

namespace Negocio
{
    public class UsuarioNegocio
    {

        public bool Loguear(Usuario usuario) {

            AccesoDatos accesoDatos = new AccesoDatos();


            try
            {

                accesoDatos.setearConsulta("SELECT Id,TipoUser FROM dbo.Usuarios WHERE Usuario = @User AND Pass = @Pass ");
                accesoDatos.setearParametro("@User", usuario.User);
                accesoDatos.setearParametro("@Pass", usuario.Pass);

                accesoDatos.ejecutarLectura();
                while (accesoDatos.Lector.Read())
                {

                    usuario.Id = (int)accesoDatos.Lector["Id"];
                    usuario.TipoUser = (int)(accesoDatos.Lector["TipoUser"]) == 2 ? TipoUsuario.ADMIN : TipoUsuario.NORMAL;    
                    return true;    
                
                }

                return false;

            }
            catch (Exception ex)
            {
                
                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }
        
        }

    }
}
