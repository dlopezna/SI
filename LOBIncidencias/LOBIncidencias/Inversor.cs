using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using AuditServices;


namespace LOBIncidencias
{
    public class Inversor : Componente
    {

        #region Propiedades
        
        private List<Componente> lStrings;
        private decimal potencia;
        const int MAXstrings = 3;

        public decimal Potencia
        {
            get { return potencia; }
            set { potencia = value; }
        }

        #endregion

        public List<Componente> Strings
        {
            get { return lStrings; }
            set { lStrings = value; }
        }

        public void addString(String nuevoString)
        {

            if (lStrings.Count < MAXstrings)
            {
                lStrings.Add(nuevoString);
                nuevoString.CrearComponente();
            }

        }

        public override void CrearComponente()
        {
            try
            {
                if (!siExiste(NSerie))
                {
                    Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                    DbCommand cmd = db.GetStoredProcCommand("paCrearInversor");
                    db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                    db.AddInParameter(cmd, "@potencia", DbType.Decimal, Potencia);
                    db.AddInParameter(cmd, "@fechaAlta", DbType.DateTime, DateTime.Now);
                    db.AddInParameter(cmd, "@id_planta", DbType.String,ComponentePadre);
                    db.AddInParameter(cmd, "@enlaceSunny", DbType.String, EnlaceSunny);
                    
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
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message , Sucesos.Excepcion);
                throw ex;
            }
        }

        public override void EliminarComponente(string nserie)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paEliminarInversor");
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
            List<Componente> inversores = new List<Componente>();
            Inversor _inversor;
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paGetInversores");

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _inversor = new Inversor();
                    _inversor.NSerie = dr["Nserie"].ToString().TrimEnd();
                    _inversor.Strings = ComponentFactory.getChildComponents("inversor", NSerie);
                    _inversor.potencia = Decimal.Parse(dr["Potencia"].ToString());
                    _inversor.ComponentePadre = dr["ID_PLANTA"].ToString().TrimEnd();
                    _inversor.EnlaceSunny = dr["EnlaceSUNNY"].ToString();

                    if (dr["FechaBaja"].ToString() != "")
                        _inversor.FechaBaja = DateTime.Parse(dr["FechaBaja"].ToString());
                    if (dr["FechaAlta"].ToString() != "")
                        _inversor.FechaAlta = DateTime.Parse(dr["FechaAlta"].ToString());
                    if (dr["UltimaIncidencia"].ToString() != "")
                        _inversor.UltimaIncidencia = DateTime.Parse(dr["UltimaIncidencia"].ToString());
                    if (dr["UltimaRevision"].ToString() != "")
                        _inversor.UltimaRevision = DateTime.Parse(dr["UltimaRevision"].ToString());

                    inversores.Add(_inversor);
                }
            }
            return inversores;
        }

        public override Componente getComponentes(string Nserie)
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            DbCommand cmd = db.GetStoredProcCommand("paGetInversorByID");
            db.AddInParameter(cmd, "@nserie", DbType.String, Nserie);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    this.NSerie = dr["Nserie"].ToString().TrimEnd();
                    this.Strings = ComponentFactory.getChildComponents("inversor", Nserie);
                    this.potencia = Decimal.Parse(dr["Potencia"].ToString());
                    this.ComponentePadre = dr["ID_PLANTA"].ToString().TrimEnd();
                    this.EnlaceSunny = dr["EnlaceSUNNY"].ToString();


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
                DbCommand cmd = db.GetStoredProcCommand("paInversorUPD");

                db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                db.AddInParameter(cmd, "@potencia", DbType.Decimal, Potencia);
                db.AddInParameter(cmd, "@id_planta", DbType.String, ComponentePadre);
                db.AddInParameter(cmd, "@enlaceSunny", DbType.String, EnlaceSunny);


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
                AuditManager.AñadirSuceso(DateTime.Now,ex.Message, Sucesos.Excepcion);
                throw ex;

            }
        }

        public override bool siExiste(string Nserie)
        {
            if (ComponentFactory.getComponent("inversor", Nserie) != null) return true;
            else return false;
        }
    }
    
}
