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

namespace WebAdmin
{
    public partial class Mantenimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void irMantenimiento(object sender, CommandEventArgs e)
        {
            Guid idTarea = new Guid(e.CommandArgument.ToString());
            Session["idTarea"] = idTarea;
            Response.Redirect("~/RealizarMantenimiento.aspx");

        }
    }
}
