using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


namespace WebAdmin.Administracion
{
    public partial class MantenimientoTareas : System.Web.UI.Page
    {
  
        protected void lvTareas_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            e.Values["TipoComponente"] = ((DropDownList)lvTareas.InsertItem.FindControl("cbTipoComponente")).SelectedValue;
            e.Values["Periodo"] = ((DropDownList)lvTareas.InsertItem.FindControl("cbPeriodo")).SelectedValue;
        }
        protected void MuestraHijos(object sender, CommandEventArgs e) {
            Guid idTarea = new Guid(e.CommandArgument.ToString());
            Session["idTarea"] = idTarea;
        
        }
        protected void lvSubtareas_ItemInserting(object sender, ListViewInsertEventArgs e) {
            e.Values["idTarea"] = Session["idTarea"];
        
        }
      
    }
}
