using System;
using System.Collections.Generic;
using System.Text;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;

namespace LOBIncidencias
{
    public class Mantenimiento
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


        public List<Tarea> getListaTareas(string periodo, string tipoComponente) {
            try
            {

                List<Tarea> tareas = new List<Tarea>();
                Tarea tarea;

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paGetTareasMantenimiento");

                db.AddInParameter(cmd, "@periodo", DbType.String, periodo);
                db.AddInParameter(cmd, "@tipoComponente", DbType.String, tipoComponente);

                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        tarea = new Tarea();
                        tarea.IdTarea = new Guid(dr["idTarea"].ToString());
                        tarea.TipoComponente = int.Parse(dr["TipoComponente"].ToString());
                        tarea.Periodo = int.Parse(dr["Periodo"].ToString());
                        tarea.Descripcion = dr["Descripcion"].ToString();
                        tarea.DefTipoComponente = dr["Nombre"].ToString();

                        tareas.Add(tarea);
                    }
                }
                return tareas;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        
        
        }

       
    }
}
