using System;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using AuditServices;

namespace LOBIncidencias
{
    public class Incidencia
    {

        #region Propiedades

        private string _observaciones;
        private DateTime _fechaApertura;
        private Int32 _id;
        private string _nserie;
        private Int32  _idTipoIncidencia;
        
        public string Descripcion
        {
            get;
            set;
        }

        public Int32 ID
        {
            get { return _id; }
            set { _id = value; }
        }
        public DateTime FechaApertura
        {
            get { return _fechaApertura; }
            set { _fechaApertura = value; }
        }
        public DateTime ? FechaCierre{get;set;}
        
        public string NSerie
        {
            get { return _nserie; }
            set { _nserie = value; }
        }
        public Int32 IdTipoIncidencia
        {
            get { return _idTipoIncidencia; }
            set { _idTipoIncidencia = value; }
        }
        public string Observaciones
        {
            get { return _observaciones; }
            set { _observaciones = value; }
        }

        
        #endregion
   
        public Incidencia() { }

        public Incidencia(DateTime fechaApertura, Int32 Tipoincidencia, string observaciones, string Nserie) {

            //this.NSerie = componente.NSerie;
            this.FechaApertura = fechaApertura;
            this.Observaciones = observaciones;
            this.IdTipoIncidencia = Tipoincidencia;
            try
            {
       
                Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");
                DbCommand cmd = db.GetStoredProcCommand("paCrearIncidencia");

                //db.AddInParameter(cmd, "@nserie", DbType.String, componente.NSerie);
                db.AddInParameter(cmd, "@fechaapertura", DbType.DateTime, fechaApertura);
                db.AddInParameter(cmd, "@tipoincidencia", DbType.Int32, Tipoincidencia);
                db.AddInParameter(cmd, "@observaciones", DbType.String, observaciones);
                db.AddInParameter(cmd, "@Nserie", DbType.String, Nserie);
                db.AddOutParameter(cmd, "@id", DbType.Int32,4);

                db.ExecuteNonQuery(cmd);
                this.ID=(Int32)db.GetParameterValue(cmd,"@id");
                /*if (componente.UltimaIncidencia.ToShortDateString().CompareTo(fechaApertura.ToShortDateString()) < 0)
                {
                    componente.UltimaIncidencia = fechaApertura;
                    componente.ActualizarComponente(TipoActualizacion.Seguimiento);
                }*/
             /*if(!IdTipoIncidencia.Equals(new Guid())){
                    this.Descripcion = IncidenciasManager.getTipoIncidenciaByID(IdTipoIncidencia).Definicion;
                    new OrdenTrabajo(this);
             }*/

             //AuditManager.AñadirSuceso(DateTime.Now, componente.NSerie, Sucesos.AltaIncidencia);
            }
            catch (Exception ex)
            {
                AuditManager.AñadirSuceso(DateTime.Now, ex.Message, Sucesos.Excepcion);
                throw ex;
            }
        
        }
    
        

      
    }
}
