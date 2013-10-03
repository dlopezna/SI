using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;

namespace LOBIncidencias
{
    public abstract class IncidenciaBase
    {
        public Componente Componente
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }

        }

        public static string[] getGruposIncidencias(){

            string[] grupos = { "Inv", "Seg", "String", "Pan" };

            return grupos;

        }
        public static string[] getIncidenciasByGrupo(string grupoIncidencias) {
          Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

          string txtsql = "SELECT * FROM ClasificacionIncidencias WHERE Grupo = @grupo";

          DbCommand cmd = db.GetSqlStringCommand(txtsql);
          db.AddInParameter(cmd, "@grupo", DbType.String, grupoIncidencias);
          List<string> values = new List<string>();
          using (IDataReader dr = db.ExecuteReader(cmd))
          {
             
              while (dr.Read())
              {
                values.Add(dr["Definicion"].ToString());
              }
          }


          return values.ToArray();
        
        }
    }
}
