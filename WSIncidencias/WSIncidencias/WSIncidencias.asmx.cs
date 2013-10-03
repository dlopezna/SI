using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Collections.Specialized;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace WSIncidencias
{
    /// <summary>
    /// Descripción breve de WSIncidencias
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WSIncidencias : System.Web.Services.WebService
    {

        [WebMethod]
        public string [] getComponentes(string knownCategoryValues, string category)
        {

            StringDictionary kv = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
            string tipoComponente;
            if (!kv.ContainsKey("Employee") || !Int32.TryParse(kv["Employee"], out iEmployee))
            {
                return null;
            }
            
            LOBIncidencias.Inversor inv = new LOBIncidencias.Inversor();
            inv.getComponentes(
        
            SqlCommand command =
            new SqlCommand("SELECT OrderID FROM Orders WHERE EmployeeID = " + iEmployee);

            command.Connection = connection;
            connection.Open();

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();

            adapter.Fill(dataSet);
            command.Connection.Close();

            DataTable tbl = dataSet.Tables[0];

            List<CascadingDropDownNameValue> values = new List<CascadingDropDownNameValue>();
            foreach (DataRow dr in tbl.Rows)
            {
                string sOrder = dr["OrderID"].ToString();
                int iOrder = (int)dr["OrderID"];
                values.Add(new CascadingDropDownNameValue(
                  sOrder, iOrder.ToString()));
            }
            return values.ToArray();
        }
    }
}
