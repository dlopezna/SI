using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using AuditServices;

namespace LOBIncidencias
{
    public class Panel : Componente
    {
        private decimal ipm;
        private decimal pmax;
        private decimal tension;

        public decimal Ipm
        {
            get { return ipm; }
            set { ipm = value; }
        }
        public decimal Pmax
        {
            get { return pmax; }
            set { pmax = value; }
        }
      
        public decimal Tension
        {
            get { return tension; }
            set { tension = value; }
        }

        public override void CrearComponente()
        {
            try
            {
                if (!siExiste(NSerie))
                {
                    Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                    DbCommand cmd = db.GetStoredProcCommand("paCrearPanel");
                    db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                    db.AddInParameter(cmd, "@descripcion", DbType.String, Descripcion);
                    db.AddInParameter(cmd, "@fechaAlta", DbType.DateTime, DateTime.Now);
                    db.AddInParameter(cmd, "@id_seguidor", DbType.String, ComponentePadre);
                    db.AddInParameter(cmd, "@pmax", DbType.Decimal, Pmax);
                    db.AddInParameter(cmd, "@ipm", DbType.Decimal, Ipm);

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

        public override void EliminarComponente(string nserie)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paEliminarPanel");
                db.AddInParameter(cmd, "@nserie", DbType.String, nserie);
                
                db.ExecuteNonQuery(cmd);
                AuditManager.AñadirSuceso(DateTime.Now, nserie, Sucesos.BorrarComponente);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now,ex.Message, Sucesos.BorrarComponente);
                throw ex;
            }
        }

        public override List<Componente> getComponentes()
        {
            List<Componente> paneles = new List<Componente>();
            Panel _panel;
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            string txtsql = "SELECT * FROM Paneles";

            DbCommand cmd = db.GetSqlStringCommand(txtsql);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _panel = new Panel();
                    _panel.NSerie = dr["Nserie"].ToString().TrimEnd();
                    _panel.Ipm = Decimal.Parse(dr["Ipm"].ToString());
                    _panel.Pmax = Decimal.Parse(dr["Pmax"].ToString());
                    _panel.Descripcion = dr["Descripcion"].ToString();
                    _panel.ComponentePadre = dr["ID_SEGUIDOR"].ToString().TrimEnd(); ;
                    if (dr["FechaBaja"].ToString() != "")
                        _panel.FechaBaja = DateTime.Parse(dr["FechaBaja"].ToString());
                    if (dr["FechaAlta"].ToString() != "")
                        _panel.FechaAlta = DateTime.Parse(dr["FechaAlta"].ToString());
                    if (dr["UltimaIncidencia"].ToString() != "")
                        _panel.UltimaIncidencia = DateTime.Parse(dr["UltimaIncidencia"].ToString());
                    if (dr["UltimaRevision"].ToString() != "")
                        _panel.UltimaRevision = DateTime.Parse(dr["UltimaRevision"].ToString());

                    paneles.Add(_panel);
                }
            }
            return paneles;
        }

        public override Componente getComponentes(string Nserie)
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            string txtsql = "SELECT * FROM Paneles WHERE NSerie=@nserie ";

            DbCommand cmd = db.GetSqlStringCommand(txtsql);
            db.AddInParameter(cmd, "@nserie", DbType.String, Nserie);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    this.NSerie = dr["Nserie"].ToString().TrimEnd();
                    this.Descripcion = dr["Descripcion"].ToString();
                    this.Ipm = Decimal.Parse(dr["Ipm"].ToString());
                    this.Pmax = Decimal.Parse(dr["Pmax"].ToString());
                    this.ComponentePadre = dr["ID_SEGUIDOR"].ToString().TrimEnd(); ;
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
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paPanelUPD");

            db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
            db.AddInParameter(cmd, "@pmax", DbType.Decimal, Pmax);
            db.AddInParameter(cmd, "@ipm", DbType.Decimal,Ipm);
            db.AddInParameter(cmd, "@descripcion", DbType.String, Descripcion);
            db.AddInParameter(cmd, "@id_seguidor", DbType.String, ComponentePadre);

            switch (tipo)
            {
                case TipoActualizacion.Mantenimiento:
                    break;
                case TipoActualizacion.Seguimiento:
                    if(!UltimaIncidencia.ToString().Equals(""))
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

        public override bool siExiste(string Nserie)
        {
            if (ComponentFactory.getComponent("panel", Nserie) != null) return true;
            else return false;
        }
    }
}
