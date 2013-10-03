using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using AuditServices;

namespace LOBIncidencias
{
    public class Planta : Componente
    {

        #region Propiedades
        private List<Componente> lInversores;
        private string tlf = "";
        private string cif = "";
        private int estado;
        private decimal pac;
        private decimal e_hoy=0;
        private decimal e_total=0;
        private int fallo;
        private Incidencia _incidencia;

        public Incidencia Incidencia
        {
            get { return _incidencia; }
            set { _incidencia = value; }
        }

        public string Telefono
        {
            get { return tlf; }
            set { tlf = value; }
        }
        public string CIF
        {
            get { return cif; }
            set { cif = value; }
        }
        public int Estado
        {
            get { return estado; }
            set { estado = value; }
        }
        public decimal Pac
        {
            get { return pac; }
            set { pac = value; }
        }
      
        public decimal E_hoy
        {
            get { return e_hoy; }
            set { e_hoy = value; }
        }
        public decimal E_total
        {
            get { return e_total; }
            set { e_total = value; }
        }
        public int Fallo
        {
            get { return fallo; }
            set { fallo = value; }
        }
        private int alerta;
        public int Alerta
        {
            get { return alerta; }
            set { alerta = value; }
        }

#endregion

        public List<Componente> Inversores
        {
            get
            {
                return lInversores;
            }
            set
            {
                lInversores = value;
            }
        }

        public override void CrearComponente()
        {
            try
            {
                if (!siExiste(NSerie))
                {
                    Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                    DbCommand cmd = db.GetStoredProcCommand("paCrearPlanta");
                    db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                    db.AddInParameter(cmd, "@descPlanta", DbType.String, Descripcion);
                    db.AddInParameter(cmd, "@fechaAlta", DbType.DateTime, DateTime.Now);
                    db.AddInParameter(cmd, "@e_total", DbType.Decimal, E_total);
                    db.AddInParameter(cmd, "@tlf", DbType.String, Telefono);
                    db.AddInParameter(cmd, "@cif", DbType.String, CIF);

                    db.ExecuteNonQuery(cmd);
                    AuditManager.AñadirSuceso(DateTime.Now, NSerie, Sucesos.CrearComponente);
                }
                else
                {
                    throw new Exception("La Planta ya existe en la BBDD");
                }
            }

            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public override void EliminarComponente(string numeroSerie)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paEliminarPlanta");
                db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                
                db.ExecuteNonQuery(cmd);
                AuditManager.AñadirSuceso(DateTime.Now, NSerie, Sucesos.BorrarComponente);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public override List<Componente> getComponentes()
        {
            List<Componente> plantas = new List<Componente>();
            Planta planta;
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            string txtsql = "SELECT * FROM Plantas where FechaBaja is null";

            DbCommand cmd = db.GetSqlStringCommand(txtsql);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    planta = new Planta();
                    planta.NSerie = dr["Nserie"].ToString().TrimEnd();

                    if (dr["UltimaIncidencia"].ToString()!="")
                        planta.UltimaIncidencia = DateTime.Parse(dr["UltimaIncidencia"].ToString());
                    if (dr["UltimaRevision"].ToString() != "")
                    planta.UltimaRevision = DateTime.Parse(dr["UltimaRevision"].ToString());

                    
                    planta.Descripcion = dr["Descripcion"].ToString();
                    if (dr["E_Total"].ToString() != "")
                        planta.E_total = Decimal.Parse(dr["E_Total"].ToString());
                    planta.cif = dr["CIF"].ToString();
                    planta.Telefono = dr["Telefono"].ToString();
                    plantas.Add(planta);
                }
            }
            return plantas;

        }

        public override Componente getComponentes(string Nserie)
        {
             Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            string txtsql = "SELECT * FROM Plantas WHERE Nserie = @nserie";
            DbCommand cmd = db.GetSqlStringCommand(txtsql);
            db.AddInParameter(cmd, "@nserie", DbType.String, Nserie);

            
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    this.NSerie = dr["Nserie"].ToString().TrimEnd();
                    this.Inversores = ComponentFactory.getChildComponents("planta", NSerie);
                    if (dr["E_Total"].ToString() != "")
                    this.E_total = Decimal.Parse(dr["E_Total"].ToString());
                    this.Descripcion = dr["Descripcion"].ToString();
                    this.cif = dr["CIF"].ToString();
                    this.Telefono = dr["Telefono"].ToString();

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
                DbCommand cmd = db.GetStoredProcCommand("paPlantasUPD");

                db.AddInParameter(cmd, "@nserie", DbType.String, NSerie);
                db.AddInParameter(cmd, "@e_total", DbType.Decimal, E_total);
                db.AddInParameter(cmd, "@descPlanta", DbType.String, Descripcion);
                db.AddInParameter(cmd, "@cif", DbType.String, CIF);
                db.AddInParameter(cmd, "@tlf", DbType.String, Telefono);

                switch (tipo)
                {
                    case TipoActualizacion.Mantenimiento:
                        break;
                    case TipoActualizacion.Seguimiento:
                        if (UltimaIncidencia.Year != 0001)
                            db.AddInParameter(cmd, "@ultimaincidencia", DbType.DateTime, UltimaIncidencia);
                        if (UltimaRevision.Year != 0001)
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
            if (ComponentFactory.getComponent("planta", Nserie) != null) return true;
            else return false;
        }

        public void getIncidencias()
        {
            throw new System.NotImplementedException();
        }

        public static List<Planta> getMisPlantas(string idUsuario)
        {
            try
            {
                List<Planta> misPlantas = new List<Planta>();
                Planta _miPlanta;
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paGetMisPlantas");

                db.AddInParameter(cmd, "@idusuario", DbType.Guid, new Guid(idUsuario));


                using (IDataReader dr = db.ExecuteReader(cmd))
                {
                    while (dr.Read())
                    {
                        _miPlanta = new Planta();
                        _miPlanta.NSerie = dr["Nserie"].ToString().TrimEnd();
                        _miPlanta.EnlaceSunny = dr["EnlaceSunny"].ToString();
                        _miPlanta.Descripcion = dr["Descripcion"].ToString();

                        misPlantas.Add(_miPlanta);
                    }
                }

                return misPlantas;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
      
    }
}
