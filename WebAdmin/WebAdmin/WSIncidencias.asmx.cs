using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using AjaxControlToolkit;
using System.Collections.Specialized;
using LOBIncidencias;

namespace WebAdmin
{
    /// <summary>
    /// Descripción breve de WSIncidencias
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
     [System.Web.Script.Services.ScriptService]
    public class WSIncidencias : System.Web.Services.WebService
    {
        [WebMethod]
        public CascadingDropDownNameValue[] getComponentesByParent(string knownCategoryValues, string category, string contextKey)
        {
            StringDictionary kv = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
            string[] c = knownCategoryValues.Split(new char[] { ':' });
            string _componente = c[1].ToLower().TrimEnd(new char[] { ';' });
            string nserie= contextKey;
            
     
                switch (category)
                {
                    case "planta":
                        nserie = _componente;
                        break;
                    case "inversor":
                        nserie = kv["planta"].ToString();
                        break;
                    case "string":
                        nserie = nserie = kv["inversor"].ToString();
                        break;
                    case "seguidor":
                        nserie = nserie = kv["string"].ToString();
                        break;
                    default:
                        break;
                }
           
            List<CascadingDropDownNameValue> values = new List<CascadingDropDownNameValue>();

            foreach (Componente item in ComponentFactory.getChildComponents(category, nserie))
            {
                nserie = item.NSerie;
                values.Add(new CascadingDropDownNameValue(nserie, nserie));
            }
            return values.ToArray();
        }



        [WebMethod]
        public CascadingDropDownNameValue[] getComponentesByTipo(string knownCategoryValues, string category, string contextKey)
        {
            string[] c = knownCategoryValues.Split(new char[]{':'});
            string _componente = c[1].ToLower().TrimEnd(new char[]{';'});
            string nseriePlanta = contextKey;

            Componente Planta = ComponentFactory.getComponent("planta", nseriePlanta);
            List<CascadingDropDownNameValue> values = new List<CascadingDropDownNameValue>();
            string nserie = "";
            switch (_componente)
            {
                case "inversor":
                    foreach (Componente planta in ((Planta)Planta).Inversores)
                    {
                        nserie = planta.NSerie;
                        values.Add(new CascadingDropDownNameValue(nserie, nserie));
                    }
                     break;
                case "string":
                     foreach (Componente inversor in ((Planta)Planta).Inversores)
                     {
                         foreach (Componente _string in ((Inversor)inversor).Strings)
                         {
                             nserie = _string.NSerie;
                              values.Add(new CascadingDropDownNameValue(nserie, nserie));
                         }
                     }
                     break;
                case "seguidor":
                     foreach (Componente inversor in ((Planta)Planta).Inversores)
                     {
                         foreach (Componente _string in ((Inversor)inversor).Strings)
                         {
                             foreach (Componente seguidor in ((LOBIncidencias.String)_string).Seguidores)
                             {
                                 nserie = seguidor.NSerie;
                                 values.Add(new CascadingDropDownNameValue(nserie, nserie));
                             }
                         }
                     }
                     break;
                case "panel":
                     foreach (Componente inversor in ((Planta)Planta).Inversores)
                     {
                         foreach (Componente _string in ((Inversor)inversor).Strings)
                         {
                             foreach (Componente seguidor in ((LOBIncidencias.String)_string).Seguidores)
                             {
                                 foreach (Componente panel in ((Seguidor)seguidor).Paneles)
                                 {
                                     nserie = panel.NSerie;
                                     values.Add(new CascadingDropDownNameValue(nserie, nserie));
                                 }
                             }
                         }
                     }
                     break;
                default:
                    break;
            }

       return values.ToArray();
        }


        [WebMethod]
         public CascadingDropDownNameValue[] getIncidenciasByGrupo(string knownCategoryValues, string category, string contextKey)
        {
            string[] c = knownCategoryValues.Split(new char[] { ':' });
            string _componente = c[1].ToLower().TrimEnd(new char[] { ';' });

            List<CascadingDropDownNameValue> values = new List<CascadingDropDownNameValue>();
            //TODO: Implementar el método para que devuelva las incidencias en función al grupo seleccionado.
            foreach (KeyValuePair<string,string> item in IncidenciasManager.getIncidenciasByGrupo(_componente))
            {
                values.Add(new CascadingDropDownNameValue(item.Value, item.Key));
            }
   
              
            return values.ToArray();
        
        }
    }
}
