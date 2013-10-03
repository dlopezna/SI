using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;

namespace LOBIncidencias
{
    public static class ComponentFactory
    {
        public static Componente createComponent(string typeComponent)
        {
            Componente comp = null;
            switch (typeComponent.ToLower())
            {
                case "inversor":
                    comp = new Inversor();
                    break;
                case "string":
                    comp = new String();
                    break;
                case "seguidor":
                    comp = new Seguidor();
                    break;
                case "panel":
                    comp = new Panel();
                    break;
                case "planta":
                    comp = new Planta();
                    break;
            }
            return comp;
        }
        public static List<Componente> getComponent(string typeComponent) {

            Componente comp=null;
            switch (typeComponent.ToLower())
            {
                case "inversor":
                    comp = new Inversor();
                    break;
                case "string":
                    comp = new String();
                    break;
                case "seguidor":
                    comp = new Seguidor();
                    break;
                case "panel":
                    comp = new Panel();
                    break;
                case "planta":
                    comp = new Planta();
                    break;
            }
            return comp.getComponentes();
        
        
        }
        public static Componente getComponent(string typeComponent, string nserie)
        {
            Componente comp = null;
            switch (typeComponent.ToLower())
            {
                case "inversor":
                    comp = new Inversor();
                    break;
                case "string":
                    comp = new String();
                    break;
                case "seguidor":
                    comp = new Seguidor();
                    break;
                case "panel":
                    comp = new Panel();
                    break;
                case "planta":
                    comp = new Planta();
                    break;
            }
            comp = comp.getComponentes(nserie);
            return comp;


        }
        public static List<Componente> getChildComponents(string typeParentComponent, string nserie) {
            string txtsql="";
            string typeComponent="";
            Database db = DatabaseFactory.CreateDatabase("IGMIncidenciasConnectionString");

            switch (typeParentComponent.ToLower())
            {
                case "inversor":
                    txtsql = "SELECT * FROM STRINGS WHERE ID_INVERSOR = @nserie";
                    typeComponent="string";
                    break;
                case "string":
                    txtsql = "SELECT * FROM SEGUIDORES WHERE ID_STRING = @nserie";
                    typeComponent="seguidor";
                    break;
                case "seguidor":
                    txtsql = "SELECT * FROM PANELES WHERE ID_SEGUIDOR = @nserie";
                    typeComponent="panel";
                    break;
                case "planta":
                    txtsql = "SELECT * FROM INVERSORES WHERE ID_PLANTA = @nserie";
                    typeComponent="inversor";
                    break;
            }

            List<Componente> childComponents = new List<Componente>();
            DbCommand cmd = db.GetSqlStringCommand(txtsql);
            db.AddInParameter(cmd, "@nserie", DbType.String, nserie);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    string child = dr[0].ToString().TrimEnd();
                    childComponents.Add(ComponentFactory.getComponent(typeComponent,child));

                }
            }

            return childComponents;
        
        }
        public static void deleteComponent(string typeComponent, string Nserie)
        {
            Componente comp = null;
            switch (typeComponent.ToLower())
            {
                case "inversor":
                    comp = new Inversor();
                    break;
                case "string":
                    comp = new String();
                    break;
                case "seguidor":
                    comp = new Seguidor();
                    break;
                case "panel":
                    comp = new Panel();
                    break;
                case "planta":
                    comp = new Planta();
                    break;
            }
            comp.EliminarComponente(Nserie);

        }
    }
}
