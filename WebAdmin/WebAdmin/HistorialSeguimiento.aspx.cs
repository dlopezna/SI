using System;
using System.Web.UI;

namespace WebAdmin
{
    public partial class HistorialSeguimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["nserie"]!=null)
            {
                cbPlantas.SelectedValue = Request["nserie"].ToString();
                
            }

        }

        protected void Filtrar(object sender, ImageClickEventArgs e)
        {
            lvSeguimiento.DataBind();
        }
    }
}
