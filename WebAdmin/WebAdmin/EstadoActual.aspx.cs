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
    public partial class EstadoActual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request["enlaceSunny"] != null)
                {
                    if (!Request["enlaceSunny"].ToString().Equals(""))
                    {
                        ifsunnyPortal.Attributes["src"] = Request["enlaceSunny"].ToString();
                        cbInversores.SelectedValue = Request["enlaceSunny"].ToString();
                    }
                    else
                    {
                        ifsunnyPortal.Attributes["src"] = "sindatos.aspx";
                        ifsunnyPortal.Attributes["width"]="600px";
                    }
                }
            }
        }

        protected void FiltrarInversor(object sender, EventArgs e)
        {
            try
            {
            if (cbInversores.SelectedValue.Equals(""))
            {
                ifsunnyPortal.Attributes["src"] = "sindatos.aspx";
            }
            else
            {
                ifsunnyPortal.Attributes["src"] = cbInversores.SelectedValue;
            }
            }
            catch (Exception)
            {

                ifsunnyPortal.Attributes["src"] = "sindatos.aspx";
            }
        }
    }
}
