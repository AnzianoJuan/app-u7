using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Acceso_Datos;

namespace Negocio
{
    public class TraineeNegocio
    {



        public int insertarNuevo(Trainee nuevoUser)
        {
			AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("insertarNuevo");
                datos.setearParametro("@email", nuevoUser.Email);
                datos.setearParametro("@pass", nuevoUser.Pass);
                return datos.ejecutarAccionScalar();

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { 
            
                datos.cerrarConexion();
            
            }
        }


    }
}
