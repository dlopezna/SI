using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using AuditServices;

namespace LOBIncidencias
{
    public class Seguidor : Componente
    {
        private List<Componente> lPaneles;
       
        public List<Componente> Paneles
        {
            get { return lPaneles; }
            set { lPaneles = value; }
        }
    
        public String String
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }


        public void addPanel(Panel nuevoPanel)
        {
            throw new NotImplementedException();
        }

        public void cambiarPanel(Panel newPanel, Panel oldPanel)
        {
            throw new NotImplementedException();
        }

        public override void EliminarComponente(string nserie)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paEliminarSeguidor");
                db.AddInParameter(cmd, "@nserie", DbType.String, nserie);
                
                db.ExecuteNonQuery(cmd);
                AuditManager.AñadirSuceso(DateTime.Now, nserie, Sucesos.BorrarComponente);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public override List<Componente> getComponentes()
        {
           List<Componente> seguidores = new List<Componente>();
            Seguidor _seguidor;
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            string txtsql = "SELECT * FROM Seguidores";

            DbCommand cmd = db.GetSqlStringCommand(txtsql);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _seguidor = new Seguidor();
                    _seguidor.NSerie = dr["Nserie"].ToString().TrimEnd();

                    _seguidor.Descripcion = dr["Descripcion"].ToString();
                    _seguidor.ComponentePadre = dr["ID_STRING"].ToString().TrimEnd(); ;

                    if (dr["FechaBaja"].ToString() != "")
                        _seguidor.FechaBaja = DateTime.Parse(dr["FechaBaja"].ToString());
                    if (dr["FechaAlta"].ToString() != "")
                        _seguidor.FechaAlta = DateTime.Parse(dr["FechaAlta"].ToString());
                    if (dr["UltimaIncidencia"].ToString() != "")
                        _seguidor.UltimaIncidencia = DateTime.Parse(dr["UltimaIncidencia"].ToString());
                    if (dr["UltimaRevision"].ToString() != "")
                        _seguidor.UltimaRevision = DateTime.Parse(dr["UltimaRevision"].ToString());


                    seguidores.Add(_seguidor);
                }
            }
            return seguidores;
    
        }

        public override void CrearComponente()
        {
            try
            {
                if (!siExiste(NSerie))
                {
                    Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                    DbCommand cmd = db.GetStoredProcCommand("paCrearSeguidor");
                    db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                    db.AddInParameter(cmd, "@descseguidor", DbType.String, Descripcion);
                    db.AddInParameter(cmd, "@fechaalta", DbType.DateTime, DateTime.Now);
                    db.AddInParameter(cmd, "@id_string", DbType.String, ComponentePadre);


                    db.ExecuteNonQuery(cmd);
                    AuditManager.AñadirSuceso(DateTime.Now,NSerie, Sucesos.CrearComponente);
                }
                else
                {
                    ActualizarComponente(TipoActualizacion.Mantenimiento);
                }
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now,ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public override Componente getComponentes(string Nserie)
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            string txtsql = "SELECT * FROM Seguidores WHERE NSerie=@nserie ";

            DbCommand cmd = db.GetSqlStringCommand(txtsql);
            db.AddInParameter(cmd, "@nserie", DbType.String, Nserie);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    this.NSerie = dr["Nserie"].ToString().TrimEnd();
                    this.Paneles = ComponentFactory.getChildComponents("seguidor", Nserie);
                    this.Descripcion = dr["Descripcion"].ToString();
                    this.ComponentePadre = dr["ID_STRING"].ToString().TrimEnd(); ;


                    if (dr["FechaBaja"].ToString() != "")
                        this.FechaBaja = DateTime.Parse(dr["FechaBaja"].ToString());
                    if (dr["FechaAlta"].ToString() != "")
                        this.FechaAlta = DateTime.Parse(dr["FechaAlta"].ToString());
                    if (dr["UltimaIncidencia"].ToString() != "")
                        this.UltimaIncidencia = DateTime.Parse(dr["UltimaIncidencia"].ToString());
                    if (dr["UltimaRevision"].ToString() != "")
                        this.UltimaRevision = DateTime.Parse(dr["UltimaRevision"].ToString());
                }
            }
            if (!this.NSerie.Equals(""))
                return this;
            else
                return null;
        }

        public override void ActualizarComponente(TipoActualizacion tipo)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paSeguidorUPD");

                db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                db.AddInParameter(cmd, "@descripcion", DbType.String, Descripcion);
                db.AddInParameter(cmd, "@id_string", DbType.String, ComponentePadre);

                switch (tipo)
                {
                    case TipoActualizacion.Mantenimiento:
                        break;
                    case TipoActualizacion.Seguimiento:
                        if (!UltimaIncidencia.ToString().Equals(""))
                            db.AddInParameter(cmd, "@ultimaincidencia", DbType.DateTime, UltimaIncidencia);

                        db.AddInParameter(cmd, "@ultimarevision", DbType.DateTime, DateTime.Now);
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
            if (ComponentFactory.getComponent("seguidor", Nserie) != null) return true;
            else return false;
        }
    }
}
