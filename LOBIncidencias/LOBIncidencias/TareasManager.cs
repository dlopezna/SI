using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using AuditServices;

namespace LOBIncidencias
{
    public static class TareasManager
    {
        public static Tarea getTareaById(Guid idTarea) {

            try
            {
                Tarea tarea;

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paGetTareaByID");
                db.AddInParameter(cmd, "@idTarea", DbType.Guid, idTarea);

                using (IDataReader dr = db.ExecuteReader(cmd))
                {
                        dr.Read();
                        tarea = new Tarea();
                        tarea.IdTarea = new Guid(dr["idTarea"].ToString());
                        tarea.TipoComponente = int.Parse(dr["TipoComponente"].ToString());
                        tarea.Periodo = int.Parse(dr["Periodo"].ToString());
                        tarea.Descripcion = dr["Descripcion"].ToString();
                        tarea.DefTipoComponente = dr["Nombre"].ToString();
                }
                return tarea;

            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public static List<Tarea> getTareas() {

            try
            {

            List<Tarea> tareas = new List<Tarea>();
            Tarea tarea;

            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paGetTareas");

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
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        
        
        }

        public static void guardarTarea(Tarea tarea) {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = null;
                if (tarea.IdTarea.ToString().Equals(new Guid().ToString()))//Crear TAREA
                {
                    cmd = db.GetStoredProcCommand("paTareasINS");
                    db.AddInParameter(cmd, "@habilitada", DbType.Boolean, true);
                }
                else//Actualizar TAREA
                {
                    cmd = db.GetStoredProcCommand("paTareasUPD");
                    db.AddInParameter(cmd, "@idTarea", DbType.Guid, tarea.IdTarea);
                    db.AddInParameter(cmd, "@habilitada", DbType.Boolean, tarea.Habilitada);
                }
                db.AddInParameter(cmd, "@periodo", DbType.Int32, tarea.Periodo);
                db.AddInParameter(cmd, "@descripcion", DbType.String, tarea.Descripcion);
                db.AddInParameter(cmd, "@tipoComponente", DbType.Int32, tarea.TipoComponente);

                db.ExecuteNonQuery(cmd);
                AuditManager.AñadirSuceso(DateTime.Now, tarea.IdTarea.ToString(), Sucesos.AltaTarea);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        
        
        
        
        }
        
        public static void eliminarTarea(Tarea tarea) {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = null;

                    cmd = db.GetStoredProcCommand("paTareasDEL");
                    db.AddInParameter(cmd, "@idTarea", DbType.Guid, tarea.IdTarea);
                    

                db.ExecuteNonQuery(cmd);
                
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        
        
        }

        public static List<Tarea> getTareasByComponente(string componente, string periodo, string tipoComponente) {
            throw new NotImplementedException();
        }

        public static List<subTarea> getSubtareasByComponente(Guid idTarea, string componente)
        {

            try
            {

                List<subTarea> subtareas = new List<subTarea>();
                subTarea subtarea;

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paGetEstadoMantenimientoComponentePendiente");
                db.AddInParameter(cmd, "@idTarea", DbType.Guid, idTarea);
                db.AddInParameter(cmd, "@componente", DbType.String, componente);
                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        subtarea = new subTarea();
                        subtarea.IdTarea = new Guid(dr["idTarea"].ToString());
                        subtarea.Id = int.Parse(dr["id"].ToString());
                        subtarea.Descripcion = dr["Descripcion"].ToString();
                        subtareas.Add(subtarea);
                    }
                }
                return subtareas;

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public static List<subTarea> getSubtareasByComponenteOff(Guid idTarea, string componente)
        {

            try
            {

                List<subTarea> subtareas = new List<subTarea>();
                subTarea subtarea;

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paGetEstadoMantenimientoComponente");
                db.AddInParameter(cmd, "@idTarea", DbType.Guid, idTarea);
                db.AddInParameter(cmd, "@componente", DbType.String, componente);
                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        subtarea = new subTarea();
                        subtarea.IdTarea = new Guid(dr["idTarea"].ToString());
                        subtarea.Id = int.Parse(dr["id"].ToString());
                        subtarea.Descripcion = dr["Descripcion"].ToString();
                        subtarea.Caduca= DateTime.Parse(dr["Caduca"].ToString());
                        subtareas.Add(subtarea);
                    }
                }
                return subtareas;

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public static List<subTarea> getSubtareasByTarea(Guid idTarea) {

            try
            {

                List<subTarea> subtareas = new List<subTarea>();
                subTarea subtarea;

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paGetSubTareasByTarea");
                db.AddInParameter(cmd, "@idTarea", DbType.Guid, idTarea);
                
                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        subtarea = new subTarea();
                        subtarea.IdTarea = new Guid(dr["idTarea"].ToString());
                        subtarea.Id = int.Parse(dr["id"].ToString());
                        subtarea.Descripcion = dr["Descripcion"].ToString();
                        subtareas.Add(subtarea);
                    }
                }
                return subtareas;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        
        }

        public static void guardarSubTarea(subTarea subTarea) {
            try
            {            
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paSubTareaINS");
                db.AddInParameter(cmd, "@idTarea", DbType.Guid, subTarea.IdTarea);
                db.AddInParameter(cmd, "@descripcion", DbType.String, subTarea.Descripcion);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        
        }

        public static void guardarMantenimiento(subTarea subTarea){           
            try
            {
                Tarea tarea = getTareaById(subTarea.IdTarea);

                if (!mantenimientoEnVigor(subTarea.Componente, subTarea.IdTarea, subTarea.Id))
                {
                    Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                    DbCommand cmd = db.GetStoredProcCommand("paHistoricoMantenimientosINS");

                    db.AddInParameter(cmd, "@componente", DbType.String, subTarea.Componente);
                    db.AddInParameter(cmd, "@idtarea", DbType.Guid, subTarea.IdTarea);
                    db.AddInParameter(cmd, "@idsubtarea", DbType.Int32, subTarea.Id);
                    db.AddInParameter(cmd, "@estado", DbType.Boolean, subTarea.Estado);
                    db.AddInParameter(cmd, "@observaciones", DbType.String, subTarea.Observaciones);
                    db.AddInParameter(cmd, "@fecha", DbType.DateTime, DateTime.Now);
                    db.AddInParameter(cmd, "@caduca", DbType.DateTime, DateTime.Now.AddMonths(tarea.Periodo));

                    db.ExecuteNonQuery(cmd);
                    AuditManager.AñadirSuceso(DateTime.Now, subTarea.Componente, Sucesos.AccionMantenimiento);
                }
                else
                {
                    throw new NotSupportedException("Este mantenimiento está en vigor para el elemento seleccionado");
                }
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        
        }

        public static bool mantenimientoEnVigor(string componente, Guid idTarea, int idSubTarea) {
            try
            {
              int filas=0;

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paMantenimientoCaducado");

                db.AddInParameter(cmd, "@componente", DbType.String, componente);
                db.AddInParameter(cmd, "@idtarea", DbType.Guid, idTarea);
                db.AddInParameter(cmd, "@idsubtarea", DbType.Int32, idSubTarea);            

                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                      filas = int.Parse(dr[0].ToString());
                    }
                }
                if (filas > 0)
                    return true;
                else
                    return false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        
        }
    }
}
