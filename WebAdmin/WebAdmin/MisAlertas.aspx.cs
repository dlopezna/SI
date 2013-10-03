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

namespace WebAdmin.Administracion
{
    public partial class MisAlertas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                MembershipUser usr = Membership.GetUser(User.Identity.Name);
                dsMisAlertas.SelectParameters.Add("idUsuario", TypeCode.String, usr.ProviderUserKey.ToString());
            }
        }

        protected void rbDiario_CheckedChanged(object sender, EventArgs e)
        {
            if (rbDiario.Checked)
            {
                txtHora.Enabled = true;
                txtMinutos.Enabled = true;
            }
            else
            {
                txtHora.Enabled = false;
                txtMinutos.Enabled = false;
            }
        }

        protected void rbSemanal_CheckedChanged(object sender, EventArgs e)
        {
            if (rbSemanal.Checked)
            {
                chkDias.Enabled = true;
                txtHora.Enabled = true;
                txtMinutos.Enabled = true;
            }
            else
            {
                chkDias.Enabled = false;
                txtHora.Enabled = false;
                txtMinutos.Enabled = false;
            }
        }

        protected void rbInmediato_CheckedChanged(object sender, EventArgs e)
        {
            if (rbInmediato.Checked)
            {
                chkDias.Enabled = false;
                txtHora.Enabled = false;
                txtMinutos.Enabled = true;
            }
        }

        protected void AddAlarma(object sender, ImageClickEventArgs e)
        {
            string diasSeleccionados="";
            AlertaUsuario miAlerta = new AlertaUsuario();
        
            miAlerta.Idalerta= new Guid(cbAlertas.SelectedValue);
            miAlerta.Idusuario= new Guid(((MembershipUser )Membership.GetUser(User.Identity.Name)).ProviderUserKey.ToString());
            miAlerta.Diaria = rbDiario.Checked;
            miAlerta.Instantanea= rbInmediato.Checked;
            if(rbSemanal.Checked){
                for (int i = 0; i < chkDias.Items.Count; i++)
                {
                    if(chkDias.Items[i].Selected)
                        diasSeleccionados += chkDias.Items[i].Text + ",";
                }
            }
            miAlerta.Dias = diasSeleccionados;
            miAlerta.Habilitada = true;
            miAlerta.Hora = DateTime.Parse(txtHora.Text + ":" + txtMinutos.Text).ToShortTimeString();


            AlertasManager.AddAlertaToCliente(miAlerta);
        }

        protected void lvMisAlertas_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            dsMisAlertas.DeleteParameters[0].DefaultValue = ((Label)lvMisAlertas.Items[e.ItemIndex].FindControl("lblAlerta")).Text;
            dsMisAlertas.DeleteParameters[1].DefaultValue = ((Label)lvMisAlertas.Items[e.ItemIndex].FindControl("lblUsuario")).Text;
    
            
        }

        protected void lvMisAlertas_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            
        }
    }
}
