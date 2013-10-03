using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using AuditServices;

namespace LOBIncidencias
{
    public static class IncidenciasManager
    {
        public static List<KeyValuePair<string,string>> getIncidenciasByGrupo(string grupoIncidencias)
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paGetIncidenciasbyGrupo");
            db.AddInParameter(cmd, "@grupo", DbType.String, grupoIncidencias);
            List<KeyValuePair<string, string>> values = new List<KeyValuePair<string, string>>();
          
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {                  
                    values.Add(new KeyValuePair<string,string>(dr["ID"].ToString(),
                                                                                dr["Definicion"].ToString()));
                }
            }


            return values;

        }
        
        public static List<Incidencia> getIncidencias()
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paGetIncidencias");
            List<Incidencia> values = new List<Incidencia>();
              Incidencia _incidencia;
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
             
                while (dr.Read())
                {
                    _incidencia= new Incidencia();
                  _incidencia.ID= Convert.ToInt32(dr["ID"]);
                    _incidencia.FechaApertura = DateTime.Parse(dr["FechaApertura"].ToString());
                    _incidencia.Descripcion= dr["Definicion"].ToString();
                    if (dr["FechaCierre"].ToString() != "")
                        _incidencia.FechaCierre=DateTime.Parse(dr["FechaCierre"].ToString());
                    
                    _incidencia.NSerie = dr["Nserie_Componente"].ToString().TrimEnd();
                    _incidencia.Observaciones = dr["Observaciones"].ToString();
                    
                    values.Add(_incidencia);
                }
            }


            return values;
        
        }

        public static List<Incidencia> getIncidencias(string nserie) { throw new NotImplementedException(); }


        #region Clasificación de Incidencia
        public static List<TipoIncidencia> getTiposIncidencias()
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paGetDefIncidencias");
            List<TipoIncidencia> values = new List<TipoIncidencia>();
            TipoIncidencia _tipoIncidencia;
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _tipoIncidencia = new TipoIncidencia();
                    _tipoIncidencia.ID = Convert.ToInt32(dr["ID"]);
                    _tipoIncidencia.Definicion = dr["Definicion"].ToString();
                    _tipoIncidencia.Coste = Decimal.Parse(dr["Coste"].ToString());
                    _tipoIncidencia.idNivel = int.Parse(dr["idNivel"].ToString());
                    _tipoIncidencia.idGrupo = int.Parse(dr["idGrupo"].ToString());
                    _tipoIncidencia.DefGrupo = dr["defGrupo"].ToString();
                    _tipoIncidencia.DefNivel = dr["defNivel"].ToString();

                    values.Add(_tipoIncidencia);
                }
            }


            return values;

        }
       
        public static TipoIncidencia getTipoIncidenciaByID(Int32 id) {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paGetDefIncidenciaByID");
            db.AddInParameter(cmd, "@id", DbType.Int32,id);
            TipoIncidencia _tipoIncidencia=null;
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _tipoIncidencia = new TipoIncidencia();
                    _tipoIncidencia.ID = Convert.ToInt32(dr["ID"]);
                    _tipoIncidencia.Definicion = dr["Definicion"].ToString();
                    _tipoIncidencia.Coste = Decimal.Parse(dr["Coste"].ToString());
                    _tipoIncidencia.idNivel = int.Parse(dr["idNivel"].ToString());
                    _tipoIncidencia.idGrupo = int.Parse(dr["idGrupo"].ToString());
                    //_tipoIncidencia.DefGrupo = dr["defGrupo"].ToString();
                    //_tipoIncidencia.DefNivel = dr["defNivel"].ToString();
                }
            }


            return _tipoIncidencia;

        
        }



        public static void insertTiposIncidencias(string Definicion, Decimal Coste, int idNivel, int idGrupo) {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                DbCommand cmd = db.GetStoredProcCommand("paClasificacionIncidenciaINS");
                db.AddInParameter(cmd, "@definicion", DbType.String, Definicion);
                db.AddInParameter(cmd, "@coste", DbType.Decimal, Coste);
                db.AddInParameter(cmd, "@idnivel", DbType.Int32, idNivel);
                db.AddInParameter(cmd, "@idgrupo", DbType.Int32, idGrupo);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        
        
        }
        public static void actualizarTiposIncidencias(Object id, string Definicion, Decimal Coste, int idNivel, int idGrupo) {

            try
            {

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                DbCommand cmd = db.GetStoredProcCommand("paClasificacionIncidenciaUPD");

                Guid _guid = new Guid(id.ToString());

                db.AddInParameter(cmd, "@id", DbType.Guid, _guid);
                db.AddInParameter(cmd, "@definicion", DbType.String, Definicion);
                db.AddInParameter(cmd, "@coste", DbType.Decimal, Coste);
                db.AddInParameter(cmd, "@idnivel", DbType.Int32, idNivel);
                db.AddInParameter(cmd, "@idgrupo", DbType.Int32, idGrupo);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        
        
        
        }
        public static void eliminarTiposIncidencias(Object id) {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                DbCommand cmd = db.GetStoredProcCommand("paClasificacionIncidenciaDEL");
                Guid _guid = new Guid(id.ToString());
                db.AddInParameter(cmd, "@id", DbType.Guid, _guid);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        
        
        }
        #endregion
        #region Grupos de Incidencias
        public static List<GrupoIncidencia> getGrupos()
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetSqlStringCommand("SELECT * FROM GrupoIncidencias");
            List<GrupoIncidencia> values = new List<GrupoIncidencia>();
            GrupoIncidencia _grupoIncidencia;
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _grupoIncidencia = new GrupoIncidencia();
                    _grupoIncidencia.ID = int.Parse(dr["ID"].ToString());
                    _grupoIncidencia.Descripcion = dr["Descripcion"].ToString();
                    _grupoIncidencia.Nombre = dr["Nombre"].ToString();

                    values.Add(_grupoIncidencia);
                }
            }


            return values;

        }
        public static void updateGrupo(int id, string Nombre, string Descripcion)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                DbCommand cmd = db.GetStoredProcCommand("paGruposIncidenciaUPD");
                db.AddInParameter(cmd, "@id", DbType.Int32, id);
                db.AddInParameter(cmd, "@nombre", DbType.String, Nombre);
                db.AddInParameter(cmd, "@descripcion", DbType.String, Descripcion);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
        public static void insertGrupo(string Nombre, string Descripcion)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                DbCommand cmd = db.GetStoredProcCommand("paGruposIncidenciaINS");
                db.AddInParameter(cmd, "@Nombre", DbType.String, Nombre);
                db.AddInParameter(cmd, "@descripcion", DbType.String, Descripcion);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public static void eliminarGrupo(int id)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                DbCommand cmd = db.GetStoredProcCommand("paGruposIncidenciaDEL");
                db.AddInParameter(cmd, "@id", DbType.Int32, id);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    #endregion
        #region Niveles de Incidencias
        public static List<NivelIncidencia> getNiveles()
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetSqlStringCommand("SELECT * FROM NivelesIncidencia");
            List<NivelIncidencia> values = new List<NivelIncidencia>();
            NivelIncidencia _grupoIncidencia;
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _grupoIncidencia = new NivelIncidencia();
                    _grupoIncidencia.ID = int.Parse(dr["ID"].ToString());
                    _grupoIncidencia.Descripcion = dr["Descripcion"].ToString();
                    _grupoIncidencia.Treparacion = Decimal.Parse(dr["Treparacion"].ToString());

                    values.Add(_grupoIncidencia);
                }
            }


            return values;

        }
        public static NivelIncidencia getNivelByID(int idNivel)
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetSqlStringCommand("SELECT * FROM NivelesIncidencia WHERE id=@id");
            db.AddInParameter(cmd, "@id", DbType.Int32, idNivel);

            NivelIncidencia _nivelIncidencia=null;
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _nivelIncidencia = new NivelIncidencia();
                    _nivelIncidencia.ID = int.Parse(dr["ID"].ToString());
                    _nivelIncidencia.Descripcion = dr["Descripcion"].ToString();
                    _nivelIncidencia.Treparacion = Decimal.Parse(dr["Treparacion"].ToString());
                }
            }


            return _nivelIncidencia;

        }
        public static void updateNivel(int id, string Descripcion, decimal Treparacion) {
            try
            {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paNivelesIncidenciaUPD");
            db.AddInParameter(cmd, "@id", DbType.Int32, id);
            db.AddInParameter(cmd, "@descripcion", DbType.String, Descripcion);
            db.AddInParameter(cmd, "@duracion", DbType.Int32, Treparacion);

            db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
        public static void insertNivel(string  Descripcion, decimal Treparacion) {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                DbCommand cmd = db.GetStoredProcCommand("paNivelesIncidenciaINS");
                db.AddInParameter(cmd, "@descripcion", DbType.String, Descripcion);
                db.AddInParameter(cmd, "@duracion", DbType.Int32, Treparacion);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public static void eliminarNivel(int id) {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                DbCommand cmd = db.GetStoredProcCommand("paNivelesIncidenciaDEL");
                db.AddInParameter(cmd, "@id", DbType.Int32, id);

                db.ExecuteNonQuery(cmd);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
        #endregion

        public static List<Incidencia> getTopTenIncidencias() { 
             Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paGetTopTenIncidencias");
            List<Incidencia> values = new List<Incidencia>();
              Incidencia _incidencia;
              using (IDataReader dr = db.ExecuteReader(cmd))
              {

                  while (dr.Read())
                  {
                      _incidencia = new Incidencia();
                      _incidencia.ID = Convert.ToInt32(dr["ID"]);
                      _incidencia.Descripcion = dr["Definicion"].ToString();
                      values.Add(_incidencia);
                  }
              }
              return values;
        }
        public static void guardarIncidencia(Incidencia incidencia)
        {
            try
            {

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paIncidenciaUPD");

                db.AddInParameter(cmd, "@id", DbType.Int32, incidencia.ID);
                db.AddInParameter(cmd, "@fechacierre", DbType.DateTime, incidencia.FechaCierre);

                db.ExecuteNonQuery(cmd);
                AuditManager.AñadirSuceso(DateTime.Now, incidencia.NSerie, Sucesos.BajaIncidencia);

            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }
        public  static Incidencia getIncidenciasByID(Int32 id)
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paGetIncidenciaByID");
            Incidencia _incidencia=null;
            db.AddInParameter(cmd, "@id", DbType.Int32,id);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _incidencia = new Incidencia();
                    _incidencia.ID = Convert.ToInt32(dr["ID"]);
                    _incidencia.FechaApertura = DateTime.Parse(dr["FechaApertura"].ToString());
                    if (dr["FechaCierre"].ToString() != "")
                        _incidencia.FechaCierre = DateTime.Parse(dr["FechaCierre"].ToString());
                    _incidencia.NSerie = dr["Nserie_Componente"].ToString().TrimEnd();
                    _incidencia.Observaciones = dr["Observaciones"].ToString();
                }
            }


            return _incidencia;

        }

        public static List<Incidencia> getIncidencias(Filtro _filtro)
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paGetIncidencias");

            if(_filtro.desde!=null)
            db.AddInParameter(cmd,"@desde",DbType.DateTime,_filtro.desde);

            if (_filtro.hasta != null)
            db.AddInParameter(cmd, "@hasta", DbType.DateTime, _filtro.hasta);

            if (_filtro.texto != "")
                db.AddInParameter(cmd, "@texto", DbType.String, _filtro.texto);

            List<Incidencia> values = new List<Incidencia>();
            Incidencia _incidencia;
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _incidencia = new Incidencia();
                    _incidencia.ID = Convert.ToInt32(dr["ID"]);
                    _incidencia.Descripcion = dr["Definicion"].ToString();
                    _incidencia.Observaciones = dr["Observaciones"].ToString();
                    _incidencia.FechaApertura=Convert.ToDateTime(dr["FechaApertura"]);
                    if (!dr["FechaCierre"].GetType().ToString().ToLower().Contains("dbnull"))
                        _incidencia.FechaCierre = Convert.ToDateTime(dr["FechaCierre"]);

                    values.Add(_incidencia);
                }
            }
            return values;
        }
    }
}
