using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.ServiceProcess;
using System.Text;
using System.Reflection;
using System.Timers;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace Notifica
{
    public partial class NotificaSPS : ServiceBase
    {
        public NotificaSPS()
        {
            InitializeComponent();
            CanPauseAndContinue = true;
        }

        protected override void OnStart(string[] args)
        {
            try
            {
                //Assembly ass = Assembly.GetExecutingAssembly();
                //String[] infoAss;
                //String version;

                //infoAss = ass.FullName.Split(',');
                //version = infoAss[1];

                escribirLog("El servicio NOTIFICA SPS se está iniciando.....\n El servicio se inició a las " + DateTime.Now.ToString());

                //escribirLog("HOLA MUNDO");
                //Objetos que van a controlar el intervalo de tiempo en el que se van a ejecutar las acciones de avisos.

                //System.Timers.Timer aTimer = new System.Timers.Timer();
                System.Timers.Timer aTimerBis = new System.Timers.Timer();

                // Enlace de los eventos con el control de intervalos
                aTimerBis.Elapsed += new ElapsedEventHandler(leerVisorSucesos);

                //aTimer.Elapsed += new ElapsedEventHandler(notificarProximasConvocatorias);

                // Establecer intervalos a los objetos Timer.Se mide en milisegundos, Ej. 1s = 1000 milisigundos.
                aTimerBis.Interval = 60000;
                    //_(long)Settings.Default["intervaloEjecucion"];
              

                aTimerBis.Enabled = true;

                //aTimer.Interval = (long)Settings.Default["intervaloEjecucion"];
                //aTimer.Enabled = true;


                // Mantener vivos los objetos timer mientras el servicio esté activo
                //GC.KeepAlive(aTimer);
                GC.KeepAlive(aTimerBis);
            }
            catch (Exception ex)
            {
                escribirLog("El servicio se ha detenido debido a un error: " + ex.Message);
            }
        }

        private static void leerVisorSucesos(object source, ElapsedEventArgs e)
        {
            try
            {
                escribirLog("Leyendo datos....");
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmdSucesos = db.GetStoredProcCommand("paGetLastSucesos");
                DbCommand cmdSuscripciones = db.GetStoredProcCommand("paGetSuscripcionesByUser");


                db.AddInParameter(cmdSucesos, "@fecha", DbType.DateTime, DateTime.Now.AddMinutes(-15));

                using (IDataReader dr = db.ExecuteReader(cmdSucesos))
                {
                    string tipoSuceso = "";
                    string afectaA = "";
                    DateTime fecha;

                    while (dr.Read())
                    {

                        tipoSuceso = dr["Suceso"].ToString();
                        afectaA = dr["AfectaA"].ToString();
                        fecha = DateTime.Parse(dr["Fecha"].ToString());
                        escribirLog("Suceso: " + tipoSuceso + " Afecta a: " + afectaA + "Fecha: " + fecha.ToString());
                        verificarSuscripcion(tipoSuceso);
                    }
                }
                    escribirLog("Lectura del Visor de sucesos realizada " + DateTime.Now.ToString());
            }
            catch (Exception ex)
            {
                escribirLog("No se han notificado retrasos debido a :" + ex.Message + " - " + DateTime.Now.ToString());
            }
        }

        private static void verificarSuscripcion(string tipoSuceso)
        {
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
            DbCommand cmdSuscripciones = db.GetStoredProcCommand("paGetSuscripcionesByUser");

            using (IDataReader dr = db.ExecuteReader(cmdSuscripciones))
            {
                while (dr.Read())
                {
                    if (tipoSuceso.Equals(dr["idAlerta"]))
                    {
                        addNotificacionToBuzon(tipoSuceso, dr["idUsuario"]);
                        if (bool.Parse(dr["Inmediato"].ToString()))
                        {
                            NotificarUsuariobyMail();
                        }
                    }
                }
            }

        }

        private static void NotificarUsuariobyMail()
        {
            escribirLog("Enviado Email al usuario " + DateTime.Now.ToString());
        }

        private static void addNotificacionToBuzon(string tipoSuceso, object p)
        {
            escribirLog("Se ha añadido una nueva alerta a su buzón " + DateTime.Now.ToString());
        }

        private static void escribirLog(string mensaje)
        {
            System.IO.StreamWriter sw = new System.IO.StreamWriter(@"C:\notificasps.log",true);
            sw.WriteLine(mensaje);
            sw.Close();
        }

        protected override void OnStop()
        {
            escribirLog("Finalizando Servicio.....\n El servicio se detuvo a las " + DateTime.Now.ToString());
        }
    }
}
