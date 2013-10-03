using System;
using System.Web.UI;
using LOBIncidencias;

namespace WebAdmin
{
    public partial class frmIncidencia : System.Web.UI.Page
    {
        Planta planta;
        Incidencia _incidencia;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["planta"] != null)
            {
                planta = (Planta)Session["planta"];
                cbTipoComponentes_CascadingDropDown.ContextKey = planta.NSerie;
                txtFecha.Text = DateTime.Now.ToShortDateString();
                lblplanta.Text = planta.NSerie;
            }
            else { 
            
            }*/
        }
        protected void AltaIncidencia(object sender, ImageClickEventArgs e)
        {
            try
            {
                //Componente cmp = null;
                /*switch (cbTipoComponentes.SelectedValue.ToLower())
                {
                    case "planta":
                        cmp = planta;
                        break;
                    case "inversor":
                        cmp = (Inversor)ComponentFactory.getComponent("Inversor", cbComponentes.SelectedValue.ToString());
                        break;
                    case "string":
                        cmp = (LOBIncidencias.String)ComponentFactory.getComponent("String", cbComponentes.SelectedValue.ToString());
                        break;
                    case "seguidor":
                        cmp = (Seguidor)ComponentFactory.getComponent("Seguidor", cbComponentes.SelectedValue.ToString());
                        break;
                    case "panel":
                        cmp = (LOBIncidencias.Panel)ComponentFactory.getComponent("Panel", cbComponentes.SelectedValue.ToString());
                        break;
                    default:
                        break;
                }*/
                //Guid idIncidencia=new Guid();
                //if (!cbIncidencias.SelectedValue.Equals(""))
                //    idIncidencia = new Guid(cbIncidencias.SelectedValue.ToString());


                //_incidencia = new Incidencia(DateTime.Parse(txtFecha.Text),Convert.ToInt32(cbTipoIncidencia.SelectedValue), txtComentarios.Text);
               //planta.Incidencia = _incidencia;
                //OrdenTrabajo ot = new OrdenTrabajo(_incidencia);
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
            finally {

                Session["planta"] = planta;
            }

        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            try
            {
                string nserie = cbSeguidores.SelectedValue;
                _incidencia = new Incidencia(DateTime.Parse(txtFecha.Text), Convert.ToInt32(cbTipoIncidencia.SelectedValue), txtComentarios.Text,nserie);
                

                OrdenTrabajo ot = new OrdenTrabajo(_incidencia);
                Response.Redirect("/");
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
            

        }
    }
}
