using System;
using System.Collections.Generic;
using System.Text;

namespace LOBIncidencias
{
    public class Tarea
    {

        #region Propiedades
        

        private Guid idTarea;

        public Guid IdTarea
        {
            get { return idTarea; }
            set { idTarea = value; }
        }
        private string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        private int periodo;

        public int Periodo
        {
            get { return periodo; }
            set { periodo = value; }
        }
        private int tipoComponente;

        public int TipoComponente
        {
            get { return tipoComponente; }
            set { tipoComponente = value; }
        }

        private bool habilitada;

        public bool Habilitada
        {
            get { return habilitada; }
            set { habilitada = value; }
        }

        private string defTipoComponente;

        public string DefTipoComponente
        {
            get { return defTipoComponente; }
            set { defTipoComponente = value; }
        }



        #endregion


        public Tarea() { }
        public Tarea(string descripcion, int periodo, int tipoComponente) {
            Descripcion = descripcion;
            Periodo = periodo;
            TipoComponente = tipoComponente;
        }
    }

    public class subTarea
    {

        #region Propiedades
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        Guid idTarea;

        public Guid IdTarea
        {
            get { return idTarea; }
            set { idTarea = value; }
        }
        string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        bool estado;

        public bool Estado
        {
            get { return estado; }
            set { estado = value; }
        }

        string observaciones;
        public string Observaciones
        {
            get { return observaciones; }
            set { observaciones = value; }
        }

        string componente;

        public string Componente
        {
            get { return componente; }
            set { componente = value; }
        }
        DateTime caduca;

        public DateTime Caduca
        {
            get { return caduca; }
            set { caduca = value; }
        }

        #endregion

        public subTarea() { }
        public subTarea(Guid idTarea, string descripcion){
            this.Descripcion = descripcion;
            this.IdTarea = idTarea;
        }
    }
}
