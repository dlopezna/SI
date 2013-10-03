using System;
using System.Collections.Generic;
using System.Text;

namespace LOBIncidencias
{
    public class NivelIncidencia
    {
        #region Propiedades

        private int _id;

        public int ID
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _descripcion;

        public string Descripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }
        private Decimal _treparacion;

        public Decimal Treparacion
        {
            get { return _treparacion; }
            set { _treparacion = value; }
        }


        #endregion
    }
}
