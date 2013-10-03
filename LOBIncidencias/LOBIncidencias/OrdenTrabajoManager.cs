using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Web;
using AuditServices;

namespace LOBIncidencias
{
    public static class  OrdenTrabajoManager
    {
        public static void guardarOrden(OrdenTrabajo _orden) {
            try
            {
                if (_orden.IdOrden != null)//Actualizar Orden
                {
                    actualizarOrden(_orden);
                   
                }
                else//Crear ORDEN
                {
                    Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                    DbCommand cmd = db.GetStoredProcCommand("paOrdenTrabajoINS");

                    db.AddInParameter(cmd, "@fechainicio", DbType.DateTime, _orden.FechaInicio);
                    db.AddInParameter(cmd, "@fechafinestimada", DbType.DateTime, _orden.FechaFinalEstimada);
                    db.AddInParameter(cmd, "@idmotivo", DbType.Int32, _orden.idMotivo);
                    db.AddInParameter(cmd, "@tipomotivo", DbType.Int32, _orden.Motivo);
                    db.AddInParameter(cmd, "@observaciones", DbType.String, _orden.Observaciones);
                    db.AddInParameter(cmd, "@descripcion", DbType.String, _orden.Descripcion);
                    db.ExecuteNonQuery(cmd);

                    AuditManager.AñadirSuceso(DateTime.Now, _orden.Motivo.ToString(), Sucesos.AltaTarea);
                }
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        private static void actualizarOrden(OrdenTrabajo _orden)
        {
            try
            {
                    Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                    DbCommand cmd = db.GetStoredProcCommand("paOrdenTrabajoUPD");

                    db.AddInParameter(cmd, "@observaciones", DbType.String, _orden.Observaciones);
                    db.AddInParameter(cmd, "@idusuario", DbType.Guid, _orden.IdUsuario);
                    db.AddInParameter(cmd, "@idorden", DbType.Int32, _orden.IdOrden);
                    db.AddInParameter(cmd, "@fechafin", DbType.DateTime, _orden.FechaFinal);

                    db.ExecuteNonQuery(cmd);
                    AuditManager.AñadirSuceso(DateTime.Now, _orden.idMotivo.ToString(), Sucesos.BajaTarea);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public static List<OrdenTrabajo> getOrdenesTrabajo() {
            List<OrdenTrabajo> ordenes = new List<OrdenTrabajo>();
            OrdenTrabajo _orden;
     
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paGetOrdenesTrabajo");

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _orden = new OrdenTrabajo();
                    _orden.IdOrden = Convert.ToInt32(dr["idOrden"]);
                    _orden.FechaInicio = DateTime.Parse(dr["FechaInicio"].ToString());
                    _orden.FechaFinalEstimada = DateTime.Parse(dr["FechaFinEstimada"].ToString());
                    _orden.Observaciones = dr["Observaciones"].ToString();
                    _orden.idMotivo = Convert.ToInt32(dr["idMotivo"]);
                    _orden.Descripcion = dr["Descripcion"].ToString();
                     //_orden.IdUsuario = new Guid(dr["idUsuario"].ToString());

                    ordenes.Add(_orden);
                }
            }
            return ordenes;
            
            
         }

        public static OrdenTrabajo getOrdenByID(Int32 _idorden)
        {
            

            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paGetOrdenTrabajoByID");
            db.AddInParameter(cmd, "@idorden", DbType.Int32,_idorden);
            OrdenTrabajo _orden=null;

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _orden = new OrdenTrabajo();
                    _orden.IdOrden = Convert.ToInt32(dr["idOrden"]);
                    _orden.FechaInicio = DateTime.Parse(dr["FechaInicio"].ToString());
                    _orden.FechaFinalEstimada = DateTime.Parse(dr["FechaFinEstimada"].ToString());
                    if(!dr["FechaFin"].ToString().Equals("")){
                        _orden.FechaFinal = DateTime.Parse(dr["FechaFin"].ToString());
                    }
                    _orden.Observaciones = dr["Observaciones"].ToString();

                    switch (int.Parse(dr["TipoMotivo"].ToString()))
                    {  
                        case 1:
                            _orden.Motivo = MotivosOrdenes._Incidencia;
                            break;
                        case 2:
                            _orden.Motivo = MotivosOrdenes._Mantenimiento;
                            break;
                        default:
                            break;
                    }
                    _orden.idMotivo = Convert.ToInt32(dr["idMotivo"]);
                    _orden.Descripcion = dr["Descripcion"].ToString();

                    if (!dr["PLANTA"].ToString().Equals(""))
                        _orden.PLANTA = dr["PLANTA"].ToString();
                    if (!dr["SEGUIDOR"].ToString().Equals(""))
                        _orden.SEGUIDOR = dr["SEGUIDOR"].ToString();
                }
            }
            return _orden;
            
        }

        public static List<OrdenTrabajo> getOrdenesTrabajoCerradas()
        {
            List<OrdenTrabajo> ordenes = new List<OrdenTrabajo>();
            OrdenTrabajo _orden;

            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paGetOrdenesTrabajoCerradas");

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _orden = new OrdenTrabajo();
                    _orden.IdOrden = Convert.ToInt32(dr["idOrden"]);
                    _orden.FechaInicio = DateTime.Parse(dr["FechaInicio"].ToString());
                    _orden.FechaFinalEstimada = DateTime.Parse(dr["FechaFinEstimada"].ToString());
                    _orden.Observaciones = dr["Observaciones"].ToString();
                    _orden.idMotivo = Convert.ToInt32(dr["idMotivo"]);
                    _orden.Descripcion = dr["Descripcion"].ToString();
                    _orden.FechaFinal = DateTime.Parse(dr["FechaFin"].ToString());

                    ordenes.Add(_orden);
                }
            }
            return ordenes;


        }
    }
}
