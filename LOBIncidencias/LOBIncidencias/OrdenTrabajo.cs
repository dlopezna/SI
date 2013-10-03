using System;
using System.Collections.Generic;
using System.Text;

namespace LOBIncidencias
{
    public class OrdenTrabajo
    {

        #region Propiedades

        
        private MotivosOrdenes motivo;

        public Int32? IdOrden{get;set;}

        public string Descripcion
        {
            get;
            set;
        }
        public DateTime FechaInicio
        {
            get;
            set;
        }
        public DateTime? FechaFinal
        {
            get;
            set;
        }
        public DateTime FechaFinalEstimada
        {
            get;
            set;
        }
        public string Observaciones
        {
            get;
            set;
        }
        public string PLANTA { get; set; }
        public string SEGUIDOR { get; set; }
        public Guid IdUsuario{get;set;}

        public MotivosOrdenes Motivo
        {
            get;
            set;
        }

        #endregion






        public Int32 idMotivo
        {
            get;
            set;

        }

        public OrdenTrabajo(Incidencia _incidencia) {

            motivo = MotivosOrdenes._Incidencia;
            this.FechaInicio = DateTime.Now;
            TipoIncidencia _tipoIncidencia = IncidenciasManager.getTipoIncidenciaByID(_incidencia.IdTipoIncidencia);
            double _treparacion =  (Double)IncidenciasManager.getNivelByID(_tipoIncidencia.idNivel).Treparacion;
            this.idMotivo= _incidencia.ID;
            this.FechaFinalEstimada = DateTime.Now.AddHours(_treparacion);
            this.Observaciones = _incidencia.Observaciones;
            this.Descripcion = _tipoIncidencia.Definicion;      
            OrdenTrabajoManager.guardarOrden(this);

        }

        public OrdenTrabajo()
        {

        }

        public OrdenTrabajo(Mantenimiento _mantenimiento)
        {

            Mantenimiento = _mantenimiento;
        }

        public Incidencia Incidencia
        {
            get { return IncidenciasManager.getIncidenciasByID(idMotivo); }
           
        }

        public Mantenimiento Mantenimiento
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }

        private void ProcesarOrden() {


           
          

        
        
        }

      

    }

    public enum MotivosOrdenes
	{
        _Incidencia = 1,
        _Mantenimiento = 2
		
	}

}
