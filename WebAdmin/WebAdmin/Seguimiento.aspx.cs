using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using LOBIncidencias;

namespace WebAdmin
{
    public partial class Seguimiento : System.Web.UI.Page
    {
        Planta planta;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                lblError.Text = "";
                planta = (Planta)Session["planta"];
            }

      
        }

           protected void ActualizarPlanta(object sender, ImageClickEventArgs e)
           {
               ActualizarDatosPlanta();
           }

           private void ActualizarDatosPlanta() {
               try
               {
                   LOBIncidencias.Seguimiento _seguimiento = null;
                   if (planta != null)
                   {
                       if (planta.UltimaRevision.ToShortDateString().CompareTo(DateTime.Now.ToShortDateString()) != 0)
                       {
                           planta.E_total += Decimal.Parse(
                           ((TextBox)lvPlantas.Items[lvPlantas.SelectedIndex].FindControl("txtE_hoy")).Text);
                           planta.UltimaRevision = DateTime.Now;
                           planta.ActualizarComponente(TipoActualizacion.Seguimiento);


                           if (planta.Incidencia != null)
                               _seguimiento =
                                   new LOBIncidencias.Seguimiento(planta.NSerie, Decimal.Parse(
                                         ((TextBox)lvPlantas.Items[lvPlantas.SelectedIndex].FindControl("txtPac")).Text),
                                        decimal.Parse(((TextBox)lvPlantas.Items[lvPlantas.SelectedIndex].FindControl("txtE_hoy")).Text), planta.Incidencia.ID);
                           else
                               _seguimiento =
                                     new LOBIncidencias.Seguimiento(planta.NSerie, Decimal.Parse(
                                          ((TextBox)lvPlantas.Items[lvPlantas.SelectedIndex].FindControl("txtPac")).Text),
                                         decimal.Parse(((TextBox)lvPlantas.Items[lvPlantas.SelectedIndex].FindControl("txtE_hoy")).Text));

                           SeguimientosManager.AnotarSeguimiento(_seguimiento);
                           lvPlantas.SelectedIndex = -1;
                           lvPlantas.DataBind();
                           Session["planta"] = null;
                           planta = null;
                       }
                       else
                       {
                           throw new Exception("Este componente ya ha sido revisado hoy, no es posible volver hacerlo");

                       }
                   }
                   else
                   {
                       throw new Exception("No ha seleccionado ningún componente");

                   }
               }
               catch (Exception ex)
               {

                   lblError.Text = ex.Message;
               }
           }

           protected void irAHistorial(object sender, ImageClickEventArgs e)
           {
               if (!planta.NSerie.Equals(""))
                   Response.Redirect("HistorialSeguimiento.aspx?nserie=" + planta.NSerie);
               else
                   lblError.Text = "Debe seleccionar una planta";
           }

           protected void SeleccionPlanta(object sender, EventArgs e)
           {
               string _nserie = "";
               _nserie = ((LinkButton)lvPlantas.Items[lvPlantas.SelectedIndex].FindControl("cmdPlanta")).Text;
               planta = (Planta)ComponentFactory.getComponent("Planta", _nserie);
               Session["planta"] = planta;
           }

           protected void lvPlantas_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
           {
               if (Session["planta"] != null && lvPlantas.SelectedIndex!=-1)
               {
                   planta = (Planta)Session["planta"];
                   if (((TextBox)lvPlantas.Items[lvPlantas.SelectedIndex].FindControl("txtE_hoy")).Text.Equals("")==false &&
                       ((TextBox)lvPlantas.Items[lvPlantas.SelectedIndex].FindControl("txtPac")).Text.Equals("")==false)
                   ActualizarDatosPlanta();
                  
               }
           }



    
    }
}
