using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;

namespace LOBIncidencias
{
    public  class Seguimiento
    {
        #region Propiedades
        

        private string _nserie;
        private decimal _pac;
        private Guid _incidencia;
        private DateTime _fechaSeguimiento;
        private decimal _ehoy;
        
        public string NSerie
        {
            get { return _nserie; }
            set { _nserie = value; }
        }
        public decimal Pac
        {
            get { return _pac; }
            set { _pac = value; }
        }
        public decimal E_Hoy
        {
            get { return _ehoy; }
            set { _ehoy = value; }
        }
        public DateTime FechaSeguimiento
        {
            get { return _fechaSeguimiento; }
            set { _fechaSeguimiento = value; }
        }
        public Int32 Incidencia { get; set; }
      
        #endregion

        public Seguimiento() { }
        public Seguimiento(string nserie, decimal pac, decimal ehoy)
        {
            this.NSerie = nserie;
            this.Pac = pac;
            this.E_Hoy = ehoy;
            this.FechaSeguimiento = DateTime.Now;
        
        
        }
        public Seguimiento(string nserie, decimal pac, decimal ehoy,Int32 incidencia)
        {
            this.NSerie = nserie;
            this.Pac = pac;
            this.E_Hoy = ehoy;
            this.FechaSeguimiento = DateTime.Now;
            this.Incidencia = incidencia;


        }               
    }
}
