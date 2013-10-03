using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using AuditServices;

namespace LOBIncidencias
{
    public class String : Componente
    {
        private List<Componente> lSeguidores;
        private bool [] canales;

        public bool[] Canales
        {
            get { return canales; }
            set { canales = value; }
        }

        public List<Componente> Seguidores
        {
            get { return lSeguidores; }
            set { lSeguidores = value; }
        }

        public Inversor Inversor
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }
        
        public  String() {
            canales = new bool[16];
        }

        public void addSeguidor(Seguidor nuevoSeguidor)
        {
            throw new NotImplementedException();
        }

          public override void EliminarComponente(string nserie)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paEliminarString");
                db.AddInParameter(cmd, "@nserie", DbType.String, nserie);
                db.ExecuteNonQuery(cmd);
                AuditManager.AñadirSuceso(DateTime.Now, nserie, Sucesos.CrearComponente);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
            }
        }

        public override List<Componente> getComponentes()
        {
            try
            {
                List<Componente> strings = new List<Componente>();
                String _string;
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                string txtsql = "SELECT * FROM Strings";

                DbCommand cmd = db.GetSqlStringCommand(txtsql);

                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        _string = new LOBIncidencias.String();
                        _string.NSerie = dr["Nserie"].ToString().TrimEnd();
                        _string.Seguidores = ComponentFactory.getChildComponents("string", NSerie);
                        if (dr["FechaBaja"].ToString() != "")
                            _string.FechaBaja = DateTime.Parse(dr["FechaBaja"].ToString());
                        if (dr["FechaAlta"].ToString() != "")
                            _string.FechaAlta = DateTime.Parse(dr["FechaAlta"].ToString());
                        if (dr["UltimaIncidencia"].ToString() != "")
                            _string.UltimaIncidencia = DateTime.Parse(dr["UltimaIncidencia"].ToString());
                        if (dr["UltimaRevision"].ToString() != "")
                            _string.UltimaRevision = DateTime.Parse(dr["UltimaRevision"].ToString());
                        _string.Descripcion = dr["Descripcion"].ToString();
                        _string.ComponentePadre = dr["ID_INVERSOR"].ToString().TrimEnd();
                        _string.Canales[0] = bool.Parse(dr["CANAL1"].ToString());
                        _string.Canales[1] = bool.Parse(dr["CANAL2"].ToString());
                        _string.Canales[2] = bool.Parse(dr["CANAL3"].ToString());
                        _string.Canales[3] = bool.Parse(dr["CANAL4"].ToString());
                        _string.Canales[4] = bool.Parse(dr["CANAL5"].ToString());
                        _string.Canales[5] = bool.Parse(dr["CANAL6"].ToString());
                        _string.Canales[6] = bool.Parse(dr["CANAL7"].ToString());
                        _string.Canales[7] = bool.Parse(dr["CANAL8"].ToString());
                        _string.Canales[8] = bool.Parse(dr["CANAL9"].ToString());
                        _string.Canales[9] = bool.Parse(dr["CANAL10"].ToString());
                        _string.Canales[10] = bool.Parse(dr["CANAL11"].ToString());
                        _string.Canales[11] = bool.Parse(dr["CANAL12"].ToString());
                        _string.Canales[12] = bool.Parse(dr["CANAL13"].ToString());
                        _string.Canales[13] = bool.Parse(dr["CANAL14"].ToString());
                        _string.Canales[14] = bool.Parse(dr["CANAL15"].ToString());
                        _string.Canales[15] = bool.Parse(dr["CANAL16"].ToString());

                        strings.Add(_string);
                    }
                }
                return strings;
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }

        }

        public override void CrearComponente()
        {
            try
            {
                if (!siExiste(NSerie))
                {
                    Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                    DbCommand cmd = db.GetStoredProcCommand("paCrearString");
                    db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                    db.AddInParameter(cmd, "@descString", DbType.String, Descripcion);
                    db.AddInParameter(cmd, "@fechaAlta", DbType.DateTime, DateTime.Now);
                    db.AddInParameter(cmd, "@id_inversor", DbType.String, ComponentePadre);
                    //Actualizar Canales
                    db.AddInParameter(cmd, "@canal1", DbType.Byte, canales[0]);
                    db.AddInParameter(cmd, "@canal2", DbType.Byte, canales[1]);
                    db.AddInParameter(cmd, "@canal3", DbType.Byte, canales[2]);
                    db.AddInParameter(cmd, "@canal4", DbType.Byte, canales[3]);
                    db.AddInParameter(cmd, "@canal5", DbType.Byte, canales[4]);
                    db.AddInParameter(cmd, "@canal6", DbType.Byte, canales[5]);
                    db.AddInParameter(cmd, "@canal7", DbType.Byte, canales[6]);
                    db.AddInParameter(cmd, "@canal8", DbType.Byte, canales[7]);
                    db.AddInParameter(cmd, "@canal9", DbType.Byte, canales[8]);
                    db.AddInParameter(cmd, "@canal10", DbType.Byte, canales[9]);
                    db.AddInParameter(cmd, "@canal11", DbType.Byte, canales[10]);
                    db.AddInParameter(cmd, "@canal12", DbType.Byte, canales[11]);
                    db.AddInParameter(cmd, "@canal13", DbType.Byte, canales[12]);
                    db.AddInParameter(cmd, "@canal14", DbType.Byte, canales[13]);
                    db.AddInParameter(cmd, "@canal15", DbType.Byte, canales[14]);
                    db.AddInParameter(cmd, "@canal16", DbType.Byte, canales[15]);


                    db.ExecuteNonQuery(cmd);
                    AuditManager.AñadirSuceso(DateTime.Now, NSerie, Sucesos.CrearComponente);
                }
                else
                {
                    ActualizarComponente(TipoActualizacion.Mantenimiento);
                }
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public override Componente getComponentes(string Nserie)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

                string txtsql = "SELECT * FROM Strings WHERE NSerie=@nserie ";

                DbCommand cmd = db.GetSqlStringCommand(txtsql);
                db.AddInParameter(cmd, "@nserie", DbType.String, Nserie);

                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        this.NSerie = dr["Nserie"].ToString().TrimEnd();
                        this.Seguidores = ComponentFactory.getChildComponents("string", Nserie);
                        this.Descripcion = dr["Descripcion"].ToString();
                        this.ComponentePadre = dr["ID_INVERSOR"].ToString().TrimEnd(); ;

                        if (dr["FechaBaja"].ToString() != "")
                            this.FechaBaja = DateTime.Parse(dr["FechaBaja"].ToString());
                        if (dr["FechaAlta"].ToString() != "")
                            this.FechaAlta = DateTime.Parse(dr["FechaAlta"].ToString());
                        if (dr["UltimaIncidencia"].ToString() != "")
                            this.UltimaIncidencia = DateTime.Parse(dr["UltimaIncidencia"].ToString());
                        if (dr["UltimaRevision"].ToString() != "")
                            this.UltimaRevision = DateTime.Parse(dr["UltimaRevision"].ToString());

                        this.Canales[0] = bool.Parse(dr["CANAL1"].ToString());
                        this.Canales[1] = bool.Parse(dr["CANAL2"].ToString());
                        this.Canales[2] = bool.Parse(dr["CANAL3"].ToString());
                        this.Canales[3] = bool.Parse(dr["CANAL4"].ToString());
                        this.Canales[4] = bool.Parse(dr["CANAL5"].ToString());
                        this.Canales[5] = bool.Parse(dr["CANAL6"].ToString());
                        this.Canales[6] = bool.Parse(dr["CANAL7"].ToString());
                        this.Canales[7] = bool.Parse(dr["CANAL8"].ToString());
                        this.Canales[8] = bool.Parse(dr["CANAL9"].ToString());
                        this.Canales[9] = bool.Parse(dr["CANAL10"].ToString());
                        this.Canales[10] = bool.Parse(dr["CANAL11"].ToString());
                        this.Canales[11] = bool.Parse(dr["CANAL12"].ToString());
                        this.Canales[12] = bool.Parse(dr["CANAL13"].ToString());
                        this.Canales[13] = bool.Parse(dr["CANAL14"].ToString());
                        this.Canales[14] = bool.Parse(dr["CANAL15"].ToString());
                        this.Canales[15] = bool.Parse(dr["CANAL16"].ToString());


                    }
                }
                if (!this.NSerie.Equals(""))
                    return this;
                else
                    return null;
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public override void ActualizarComponente(TipoActualizacion tipo)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paStringUPD");

                db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                db.AddInParameter(cmd, "@descripcion", DbType.String, Descripcion);
                db.AddInParameter(cmd, "@id_inversor", DbType.String, ComponentePadre);
                //Actualizar Canales
                db.AddInParameter(cmd, "@canal1", DbType.Byte, canales[0]);
                db.AddInParameter(cmd, "@canal2", DbType.Byte, canales[1]);
                db.AddInParameter(cmd, "@canal3", DbType.Byte, canales[2]);
                db.AddInParameter(cmd, "@canal4", DbType.Byte, canales[3]);
                db.AddInParameter(cmd, "@canal5", DbType.Byte, canales[4]);
                db.AddInParameter(cmd, "@canal6", DbType.Byte, canales[5]);
                db.AddInParameter(cmd, "@canal7", DbType.Byte, canales[6]);
                db.AddInParameter(cmd, "@canal8", DbType.Byte, canales[7]);
                db.AddInParameter(cmd, "@canal9", DbType.Byte, canales[8]);
                db.AddInParameter(cmd, "@canal10", DbType.Byte, canales[9]);
                db.AddInParameter(cmd, "@canal11", DbType.Byte, canales[10]);
                db.AddInParameter(cmd, "@canal12", DbType.Byte, canales[11]);
                db.AddInParameter(cmd, "@canal13", DbType.Byte, canales[12]);
                db.AddInParameter(cmd, "@canal14", DbType.Byte, canales[13]);
                db.AddInParameter(cmd, "@canal15", DbType.Byte, canales[14]);
                db.AddInParameter(cmd, "@canal16", DbType.Byte, canales[15]);


                switch (tipo)
                {
                    case TipoActualizacion.Mantenimiento:

                        break;
                    case TipoActualizacion.Seguimiento:
                        if (!UltimaIncidencia.ToString().Equals(""))
                            db.AddInParameter(cmd, "@ultimaincidencia", DbType.DateTime, UltimaIncidencia);
                        db.AddInParameter(cmd, "@ultimarevision", DbType.DateTime, UltimaRevision);
                        break;
                    case TipoActualizacion.Baja:
                        db.AddInParameter(cmd, "@fechabaja", DbType.DateTime, DateTime.Now);
                        break;
                    default:
                        break;
                }
                db.ExecuteNonQuery(cmd);
                AuditManager.AñadirSuceso(DateTime.Now, NSerie, Sucesos.ModificarComponente);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }
            
        public override bool siExiste(string Nserie)
        {
            if (ComponentFactory.getComponent("string", Nserie) != null) return true;
            else return false;
        }
    }
}
