using System;
using System.Collections.Generic;
using System.Text;

namespace LOBIncidencias
{
    public abstract class Componente
    {
        #region Propiedades
        private string _NSerie="";
        private string _Descripcion="";
        private DateTime _UltimaIncidencia;
        private DateTime _UltimaRevision;
        private DateTime _FechaBaja;
        private DateTime _FechaAlta;
        private string _ComponentePadre="";
        private string _enlaceSunny = "";

        public string EnlaceSunny
        {
            get { return _enlaceSunny; }
            set { _enlaceSunny = value; }
        }

        public string ComponentePadre
        {
            get { return _ComponentePadre; }
            set { _ComponentePadre = value; }
        }

        public DateTime FechaAlta
        {
            get { return _FechaAlta; }
            set { _FechaAlta = value; }
        }
        public string Descripcion
        {
            get { return _Descripcion; }
            set { _Descripcion = value; }
        }
        public DateTime UltimaIncidencia
        {
            get { return _UltimaIncidencia; }
            set { _UltimaIncidencia = value; }
        }
        public DateTime FechaBaja
        {
            get { return _FechaBaja; }
            set { _FechaBaja = value; }
        }
        public DateTime UltimaRevision
        {
            get { return _UltimaRevision; }
            set { _UltimaRevision = value; }
        }
        public string NSerie
        {
            get { return _NSerie; }
            set { _NSerie = value; }
        }

  

        #endregion

        #region Conversión de Fechas
        public string Ultima_Incidencia
        {

            get
            {
                if (UltimaIncidencia.Year == 0001)
                    return "";
                else
                    return UltimaIncidencia.ToShortDateString();

            }
           
        }

        public string Ultima_Revision
        {

            get
            {
                if (UltimaRevision.Year == 0001)
                    return "";
                else
                    return UltimaRevision.ToShortDateString();

            }
             
        }

        public string Fecha_Alta
        {

            get
            {
                if (FechaAlta.Year == 0001)
                    return "";
                else
                    return FechaAlta.ToShortDateString();

            }
        }

        public string Fecha_Baja
        {

            get
            {
                if (FechaBaja.Year == 0001)
                    return "";
                else
                    return FechaBaja.ToShortDateString();

            }
        }
        #endregion


        public abstract void CrearComponente();
        public abstract void EliminarComponente(string numeroSerie);
        public abstract List<Componente> getComponentes();
        public abstract Componente getComponentes(string Nserie);
        public abstract void ActualizarComponente(TipoActualizacion tipo);
        public abstract bool siExiste(string Nserie);

    }


    public enum TipoActualizacion
    {
        Mantenimiento,
        Seguimiento,
        Baja

    }
}

