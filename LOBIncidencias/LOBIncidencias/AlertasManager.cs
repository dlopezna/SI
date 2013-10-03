using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using AuditServices;

namespace LOBIncidencias
{
    public class AlertasManager
    {
        public static int getCountAlertas()
        {
            return 0;
        }
        public static List<Alerta> getAlertasEnabled() {
            List<Alerta> alertas = new List<Alerta>();
            Alerta _alerta;

            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmd = db.GetStoredProcCommand("paGetTareasEnabled");

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    _alerta = new Alerta();
                    _alerta.IdAlerta = new Guid(dr["idAlerta"].ToString());
                    _alerta.Descripcion = dr["Descripcion"].ToString();
                    _alerta.Enabled = bool.Parse(dr["Habilitada"].ToString());


                    alertas.Add(_alerta);
                }
            }
            return alertas;
        
        }

        public static List<AlertaUsuario> getMisAlertas(string idUsuario)
        {
            try
            {
                List<AlertaUsuario> misAlertas = new List<AlertaUsuario>();
                AlertaUsuario _miAlerta;

                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paGetMisTareas");
                db.AddInParameter(cmd, "@idusuario", DbType.Guid, new Guid(idUsuario));


                using (IDataReader dr = db.ExecuteReader(cmd))
                {

                    while (dr.Read())
                    {
                        _miAlerta = new AlertaUsuario();
                        _miAlerta.Idusuario = new Guid(dr["idUsuario"].ToString());
                        _miAlerta.Idalerta = new Guid(dr["idAlerta"].ToString());
                        _miAlerta.Dias = dr["Dias"].ToString();
                        _miAlerta.Habilitada = bool.Parse(dr["Habilitada"].ToString());
                        _miAlerta.Instantanea = bool.Parse(dr["Instantanea"].ToString());
                        _miAlerta.Email = bool.Parse(dr["Email"].ToString());
                        _miAlerta.Hora = dr["Hora"].ToString();
                        _miAlerta.Diaria = bool.Parse(dr["Diaria"].ToString());
                        _miAlerta.Descripcion = dr["Descripcion"].ToString();

                        misAlertas.Add(_miAlerta);
                    }
                }
                return misAlertas;
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public static void AddAlertaToCliente(AlertaUsuario nuevaAlerta)
        {

            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paAddAlertaToCliente");

                db.AddInParameter(cmd, "@idusuario", DbType.Guid, nuevaAlerta.Idusuario);
                db.AddInParameter(cmd, "@idalerta", DbType.Guid, nuevaAlerta.Idalerta);
                db.AddInParameter(cmd, "@diaria", DbType.Boolean, nuevaAlerta.Diaria);
                db.AddInParameter(cmd, "@instantanea", DbType.Boolean, nuevaAlerta.Instantanea);
                db.AddInParameter(cmd, "@email", DbType.Boolean, nuevaAlerta.Email);
                db.AddInParameter(cmd, "@hora", DbType.String, nuevaAlerta.Hora);
                db.AddInParameter(cmd, "@dias", DbType.String, nuevaAlerta.Dias);

                db.ExecuteNonQuery(cmd);
                string audita = "";
                audita= "Alerta: "+nuevaAlerta.Idalerta +", Usuario: "+nuevaAlerta.Idusuario;
                AuditManager.AñadirSuceso(DateTime.Now, audita, Sucesos.AñadirAlerta);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }

        }

        public static void UpdateAlertaFromUsuario(string idAlerta, string idUsuario, bool Habilitada, bool Email)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paUpdateAlertaFromUsuario");

                db.AddInParameter(cmd, "@habilitada", DbType.Boolean, Habilitada);
                db.AddInParameter(cmd, "@email", DbType.Boolean, Email);
                db.AddInParameter(cmd, "@idalerta", DbType.Guid, new Guid(idAlerta));
                db.AddInParameter(cmd, "@idusuario", DbType.Guid, new Guid(idUsuario));

                db.ExecuteNonQuery(cmd);
                string audita = "";
                audita = "Alerta: " + idAlerta + ", Usuario: " + idUsuario;
                AuditManager.AñadirSuceso(DateTime.Now, audita, Sucesos.ModificarAlerta);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }

        public static void RemoveAlertaToCliente(string idAlerta, string idUsuario)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paRemoveAlertaFromCliente");

                db.AddInParameter(cmd, "@idusuario", DbType.Guid, new Guid(idUsuario));
                db.AddInParameter(cmd, "@idalerta", DbType.Guid, new Guid(idAlerta));

                db.ExecuteNonQuery(cmd);
                string audita = "";
                audita = "Alerta: " + idAlerta + ", Usuario: " + idUsuario;
                AuditManager.AñadirSuceso(DateTime.Now, audita, Sucesos.BorrarAlerta);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        }
    }

    public class Alerta
    {
        private Guid idAlerta;
        private bool enabled;
        private string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }



        public bool Enabled
        {
            get { return enabled; }
            set { enabled = value; }
        }



        public Guid IdAlerta
        {
            get { return idAlerta; }
            set { idAlerta = value; }
        }


    }

    public class AlertaUsuario {
        private Guid idusuario;
        private Guid idalerta;
        private bool diaria;
        private string hora;
        private bool email;
        private bool habilitada;
        private string dias;
        private bool instantanea;
        private string definicion;

        public string Descripcion
        {
            get { return definicion; }
            set { definicion = value; }
        }

        public bool Instantanea
        {
            get { return instantanea; }
            set { instantanea = value; }
        }

        public string Dias
        {
            get { return dias; }
            set { dias = value; }
        }

        public bool Habilitada
        {
            get { return habilitada; }
            set { habilitada = value; }
        }

        public bool Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Hora
        {
            get { return hora; }
            set { hora = value; }
        }

        public bool Diaria
        {
            get { return diaria; }
            set { diaria = value; }
        }

        public Guid Idalerta
        {
            get { return idalerta; }
            set { idalerta = value; }
        }


        public Guid Idusuario
        {
            get { return idusuario; }
            set { idusuario = value; }
        }
    
    
    }
}
