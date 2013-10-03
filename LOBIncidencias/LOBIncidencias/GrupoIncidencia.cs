using System;
using System.Collections.Generic;
using System.Text;

namespace LOBIncidencias{
    public class GrupoIncidencia
    {

        #region Propiedades
        private int _id;

        public int ID
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _nombre;

        public string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }
        private string _descripcion;

        public string Descripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }


        
        #endregion
    }

}
