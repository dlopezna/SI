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

using SecurityServices;

namespace WebAdmin.Seguridad
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chkTodas_CheckedChanged(object sender, EventArgs e)
        {
            if (chkTodas.Checked)
            {
                for (int i = 0; i < chkBoxPlantas.Items.Count; i++)
                {
                    chkBoxPlantas.Items[i].Selected = true;
                }
            }
            else
            {
                for (int i = 0; i < chkBoxPlantas.Items.Count; i++)
                {
                    chkBoxPlantas.Items[i].Selected = false;
                }
            }


        }

        protected void cmdAceptar_Click(object sender, EventArgs e)
        {
            string plantas="";
            for (int i = 0; i < chkBoxPlantas.Items.Count; i++)
            {
                if (chkBoxPlantas.Items[i].Selected)
                {
                    plantas += chkBoxPlantas.Items[i].Text + ";";
                }
            }
            Cliente nuevoCliente = new Cliente();
            nuevoCliente.Nombre=txtCliente.Text;
            nuevoCliente.Telefono= txtTelefono.Text;
            nuevoCliente.Email=txtEmail.Text;

            SecurityManager.AddCliente(nuevoCliente,plantas.Split(';'));
            lvClientes.DataBind();
        }

        protected void lvClientes_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            string id = ((Label)lvClientes.Items[e.ItemIndex].FindControl("lblId")).Text;
            dsClientes.DeleteParameters[0].DefaultValue = id;
            chkBoxPlantas.ClearSelection();
        }

        protected void lvClientes_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
        {
            int id = int.Parse(((Label)lvClientes.Items[e.NewSelectedIndex].FindControl("lblId")).Text);
            chkBoxPlantas.Enabled = false;
            for (int i = 0; i < chkBoxPlantas.Items.Count; i++)
            {
                chkBoxPlantas.Items[i].Selected=
                                                    SecurityManager.IsPlantaInCliente(id,chkBoxPlantas.Items[i].Text);
                    
            }
        }

        protected void lvClientes_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            chkBoxPlantas.Enabled = true;
        }

        protected void lvClientes_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            chkBoxPlantas.Enabled = false;
        }

        protected void lvClientes_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            Cliente updCliente = new Cliente();
            updCliente.Id=int.Parse(e.OldValues["Id"].ToString());
            for (int i = 0; i < chkBoxPlantas.Items.Count; i++)
            {
                if (chkBoxPlantas.Items[i].Selected)
                {
                    SecurityManager.AddPlantaToCliente(updCliente, chkBoxPlantas.Items[i].Text);
                }
                else
                {
                    if (SecurityManager.IsPlantaInCliente(updCliente.Id, chkBoxPlantas.Items[i].Text))
                        SecurityManager.RemovePlantaFromCliente(updCliente, chkBoxPlantas.Items[i].Text);
                }

            }
            chkBoxPlantas.Enabled = false;
        }
    }
}
