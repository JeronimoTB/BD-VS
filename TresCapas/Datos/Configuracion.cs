using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Configuracion
    {
        //static string cadenaConexion = @"Data Source=pale-HP;Initial Catalog=Vehiculos;User ID=wil;Password=jero2maria";
        static string cadenaConexion = @"Data Source=MEDREAFSTCDS012;Initial Catalog=Automovil;Trusted_Connection=true";
        public static string CadenaConexion
        {
            get { return cadenaConexion; }
        }

    }
}
