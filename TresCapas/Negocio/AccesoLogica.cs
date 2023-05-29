using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Datos;

namespace Negocio
{
    public class AccesoLogica
    {
        public int Insert(int idtipo, string nombretipo)
        {
            AccesoDatos acceso = new AccesoDatos();
            return acceso.Insert(idtipo, nombretipo);
        }

        public static DataTable ObtenerTiposVehiculo()
        {
            return AccesoDatos.ObtenerTiposVehiculo();
        }

        public int Update(int idtipo, string nombretipo)
        {
            AccesoDatos acceso = new AccesoDatos();
            return acceso.updateTipoVehi(idtipo, nombretipo);
        }
        public int delete(int idtipo)
        {
            AccesoDatos acceso = new AccesoDatos();
            return acceso.deleteTipoVehi(idtipo);
        }

    }
}
