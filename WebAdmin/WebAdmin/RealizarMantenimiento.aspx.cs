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
using LOBIncidencias;

namespace WebAdmin
{
    public partial class RealizarMantenimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
            if (!Page.IsPostBack)
            {
                if (Session["idTarea"] != null)
                {
                    Tarea tarea = TareasManager.getTareaById(new Guid(Session["idTarea"].ToString()));
                    switch (tarea.DefTipoComponente.ToString().ToLower())
                    {
                        case "planta":
                            cbInversores.Visible = false;
                            cbStrings.Visible = false;
                            cbSeguidores.Visible = false;
                            cbPaneles.Visible = false;
                            break;
                        case "inversor":
                            cbStrings.Visible = false;
                            cbSeguidores.Visible = false;
                            cbPaneles.Visible = false;
                            break;
                        case "string":
                            cbSeguidores.Visible = false;
                            cbPaneles.Visible = false;
                            break;
                        case "seguidor":
                            cbPaneles.Visible = false;
                            break;
                        case "panel":
                            cbPlantas.Visible = true;
                            cbInversores.Visible = true;
                            cbStrings.Visible = true;
                            cbSeguidores.Visible = true;
                            cbPaneles.Visible = true;
                            break;

                    }
                }
            }
        }

        protected void lvSubTareas_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            try
            {

                   Tarea tarea = TareasManager.getTareaById(new Guid(Session["idTarea"].ToString()));
                    string NSerie="";
                    switch (tarea.DefTipoComponente.ToString().ToLower())
                    {
                        case "planta":
                            NSerie= cbPlantas.SelectedValue;
                            break;
                        case "inversor":
                            NSerie= cbInversores.SelectedValue;
                            break;
                        case "string":
                            NSerie= cbStrings.SelectedValue;
                            break;
                        case "seguidor":
                           NSerie= cbSeguidores.SelectedValue;
                            break;
                        case "panel":
                            NSerie= cbPaneles.SelectedValue;
                            break;
                        default:
                            NSerie="";
                            break;

                    }
                    e.NewValues["Componente"] = NSerie;
                    
                    
                if(NSerie.Equals(""))
                        e.Cancel = true;
            }
            catch (Exception ex)
            {

                throw ex ;
            }
        }

        protected void Cargar(object sender, ImageClickEventArgs e)
        {
            Tarea tarea = TareasManager.getTareaById(new Guid(Session["idTarea"].ToString()));
            string NSerie = "";
            switch (tarea.DefTipoComponente.ToString().ToLower())
            {
                case "planta":
                    NSerie = cbPlantas.SelectedValue;
                    break;
                case "inversor":
                    NSerie = cbInversores.SelectedValue;
                    break;
                case "string":
                    NSerie = cbStrings.SelectedValue;
                    break;
                case "seguidor":
                    NSerie = cbSeguidores.SelectedValue;
                    break;
                case "panel":
                    NSerie = cbPaneles.SelectedValue;
                    break;
                default:
                    NSerie = "";
                    break;

            }
            Session["NSerie"] = NSerie;

            dsSubTareas.DataBind();
            dsSubTareasOff.DataBind();
        }

        protected void lvSubTareas_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
        {
            dsSubTareasOff.DataBind();

        }
    }
}
