using System;
using System.Collections.Generic;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using AuditServices;

namespace LOBIncidencias
{
    public static class SeguimientosManager
    {
        public static List<Seguimiento> getSeguimientoPlanta(string nserie, DateTime finicio, DateTime ffinal)
        {
            try
            {
                List<Seguimiento> seguimientos = new List<Seguimiento>();
                Seguimiento _seguimiento;

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paGetSeguimiento");

                if (finicio.Year == 0001 && ffinal.Year == 0001)
                {
                    db.AddInParameter(cmd, "@nserie", DbType.String, nserie);
                }
                else
                {
                    db.AddInParameter(cmd, "@nserie", DbType.String, nserie);
                    if (finicio.Year != 0001)
                        db.AddInParameter(cmd, "@finicio", DbType.DateTime, finicio);
                    if (ffinal.Year != 0001)
                        db.AddInParameter(cmd, "@ffinal", DbType.DateTime, ffinal);
                }

                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        _seguimiento = new Seguimiento();
                        _seguimiento.NSerie = dr["Planta"].ToString().TrimEnd();
                        _seguimiento.Pac = Decimal.Parse(dr["Pac"].ToString());
                        _seguimiento.E_Hoy = Decimal.Parse(dr["E_Hoy"].ToString());
                        if (dr["Incidencia"].ToString() != "")
                            _seguimiento.Incidencia = Convert.ToInt32(dr["Incidencia"]);
                        if (dr["FechaSeguimiento"].ToString() != "")
                            _seguimiento.FechaSeguimiento = DateTime.Parse(dr["FechaSeguimiento"].ToString());


                        seguimientos.Add(_seguimiento);
                    }
                }
                return seguimientos;

            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public static void AnotarSeguimiento(Seguimiento seguimiento)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paSeguimientoPlantas");

                db.AddInParameter(cmd, "@nserie", DbType.String, seguimiento.NSerie);
                db.AddInParameter(cmd, "@fechaseguimiento", DbType.DateTime, seguimiento.FechaSeguimiento);
                db.AddInParameter(cmd, "@pac", DbType.Decimal, seguimiento.Pac);
                db.AddInParameter(cmd, "@ehoy", DbType.Decimal, seguimiento.E_Hoy);
                db.AddInParameter(cmd, "@incidencia", DbType.Guid, seguimiento.Incidencia);

                db.ExecuteNonQuery(cmd);
                AuditManager.AñadirSuceso(DateTime.Now, seguimiento.NSerie, Sucesos.AccionSeguimiento);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public static int getCountOrdenesTrabajo() {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paCountOrdenesActivas");
                return (int)db.ExecuteScalar(cmd);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public static int getCountIncidenciasTrabajo()
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paCountIncidenciasActivas");
                return (int)db.ExecuteScalar(cmd);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }


        }

    }
}
