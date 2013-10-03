using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using LOBIncidencias;

namespace WebAdmin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAlertas.Text = AlertasManager.getCountAlertas().ToString();
            lblOrdenes.Text = SeguimientosManager.getCountOrdenesTrabajo().ToString();
            lblIncidencias.Text = SeguimientosManager.getCountIncidenciasTrabajo().ToString();
        }

        protected void VerPlanta(object sender, CommandEventArgs e)
        {
            Server.Transfer("~/EstadoActual.aspx?enlaceSunny=" + e.CommandArgument);
        }

        protected void lvPlantas_Init(object sender, EventArgs e)
        {
            MembershipUser currentUser = Membership.GetUser(User.Identity.Name);
            dsPlantas.SelectParameters.Add("idusuario", TypeCode.String, currentUser.ProviderUserKey.ToString());
        }
    }
}
