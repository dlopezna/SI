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

using System.Collections.Generic;
using SecurityServices;

namespace WebAdmin
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lvUsuarios_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            chkBoxListRoles.Enabled = true;
            chkBoxListClientes.Enabled = true;
        }

        protected void lvUsuarios_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            MembershipUser selectUser = Membership.GetUser(e.OldValues["UserName"].ToString());

            for (int i = 0; i < chkBoxListRoles.Items.Count; i++)
            {
                if (chkBoxListRoles.Items[i].Selected)
                {
                    if (!Roles.IsUserInRole(selectUser.UserName, chkBoxListRoles.Items[i].Value))
                    {
                        Roles.AddUserToRole(selectUser.UserName, chkBoxListRoles.Items[i].Value);
                    }
                }
                else
                {
                    if (Roles.IsUserInRole(selectUser.UserName, chkBoxListRoles.Items[i].Value))
                    {
                        Roles.RemoveUserFromRole(selectUser.UserName, chkBoxListRoles.Items[i].Value);
                    }
                   
                }
            }
            for (int i = 0; i < chkBoxListClientes.Items.Count; i++)
            {
                if (chkBoxListClientes.Items[i].Selected)
                {
                    if (!SecurityManager.IsUserInCliente(selectUser.ProviderUserKey, chkBoxListClientes.Items[i].Value))
                    {
                        SecurityManager.AddUserToCliente(selectUser.ProviderUserKey, chkBoxListClientes.Items[i].Value);
                    }
                }
                else
                {
                    if (SecurityManager.IsUserInCliente(selectUser.ProviderUserKey, chkBoxListClientes.Items[i].Value))
                    {
                        SecurityManager.RemoveUserFromCliente(selectUser.ProviderUserKey, chkBoxListClientes.Items[i].Value);
                    }
                }
            }
            chkBoxListRoles.Enabled = false;
            chkBoxListClientes.Enabled = false;
        }

        protected void lvUsuarios_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
        {
            Label usr = (Label)lvUsuarios.Items[e.NewSelectedIndex].FindControl("lblUserName");
            MembershipUser selectUser = Membership.GetUser(usr.Text);
            for (int i = 0; i < chkBoxListRoles.Items.Count; i++)
            {
                chkBoxListRoles.Items[i].Selected = Roles.IsUserInRole(selectUser.UserName, chkBoxListRoles.Items[i].Value);
            }
            for (int i = 0; i < chkBoxListClientes.Items.Count; i++)
            {
                chkBoxListClientes.Items[i].Selected = SecurityManager.IsUserInCliente(selectUser.ProviderUserKey, chkBoxListClientes.Items[i].Value);
            }
        }

        protected void lvUsuarios_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            Label usr = (Label)lvUsuarios.Items[e.ItemIndex].FindControl("lblUserName");
            MembershipUser selectUser = Membership.GetUser(usr.Text);
            dsUsuarios.DeleteParameters.Add("UserName", TypeCode.String, selectUser.UserName);            
        }

        protected void lvUsuarios_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            chkBoxListClientes.Enabled = false;
            chkBoxListRoles.Enabled = false;
        }
    }
}
