using System;

namespace LOBIncidencias
{
    public class TipoIncidencia
    {

        #region Propiedades

        private int _idgrupo;
        private string _defGrupo;

        public string DefGrupo
        {
            get { return _defGrupo; }
            set { _defGrupo = value; }
        }
        private string _defNivel;

        public string DefNivel
        {
            get { return _defNivel; }
            set { _defNivel = value; }
        }

        public int idGrupo
        {
            get { return _idgrupo; }
            set { _idgrupo = value; }
        }
        private string _definicion;
        private Decimal _coste;
        private int _idnivel;

        public Int32 ID{get;set;}
       
        public string Definicion
        {
            get { return _definicion; }
            set { _definicion = value; }
        }
        public Decimal Coste
        {
            get { return _coste; }
            set { _coste = value; }
        }
        public int idNivel
        {
            get { return _idnivel; }
            set { _idnivel = value; }
        }

        #endregion
    }
}
