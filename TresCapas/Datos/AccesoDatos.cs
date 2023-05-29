using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    public class AccesoDatos
    {
        public int Insert(int idtipo, string nombretipo)
        {
            SqlCommand _comando = TipoVehiCRUD.CrearComandoProc();
            _comando.Parameters.AddWithValue("@id", idtipo);
            _comando.Parameters.AddWithValue("@nombre", nombretipo); 
            
            return TipoVehiCRUD.EjecutarComandoInsert(_comando);
        }

        public static DataTable ObtenerTiposVehiculo()
        {
            SqlCommand _comando = TipoVehiCRUD.CrearComando();
            _comando.CommandText = "SELECT * FROM tipo_vehiculo";
            return TipoVehiCRUD.EjecutarComandoSelect(_comando);
        }

        //Operacion Update
        public int updateTipoVehi(int idtipo, string nombretipo)
        {
            SqlCommand _comando = TipoVehiCRUD.crearProcAct();
            _comando.Parameters.AddWithValue("@id", idtipo);
            _comando.Parameters.AddWithValue("@nombre", nombretipo);

            return TipoVehiCRUD.EjecutarcomandoUpdate(_comando);
        }
        //Operacion delete
        public int deleteTipoVehi(int idtipo)
        {
            SqlCommand _comando = TipoVehiCRUD.crearProcDelt();
            _comando.Parameters.AddWithValue("@id", idtipo);

            return TipoVehiCRUD.EjecutaromandoDelete(_comando);
        }

    }
}
