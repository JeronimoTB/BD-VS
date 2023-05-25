using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Config
    {
        //Metodo Anticuado y NO RECOMENDADO
        //static string cadenaConexion = @"Data Source=pale-HP;Initial Catalog=Vehiculos; User ID=wil; Password=jero2maria";
        static string cadenaConexion = @"Data Source=MEDREAFSTCDS012; Initial Catalog=Transportes;Trusted_Connection=true";

        public static string ConexionConexion
        {
            get {return cadenaConexion; }
        }   
    }
}
