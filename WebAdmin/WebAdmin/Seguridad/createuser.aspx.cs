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

namespace WebAdmin
{
    public partial class createuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            MembershipUser currentUser = Membership.GetUser(CreateUserWizard1.UserName);
             for (int i = 0; i < chkBoxListRoles.Items.Count; i++)
            {
                if (chkBoxListRoles.Items[i].Selected)
                {
                    Roles.AddUserToRole(currentUser.UserName, chkBoxListRoles.Items[i].Value);
                }
            }
            for (int i = 0; i < chkBoxListClientes.Items.Count; i++)
            {
                if (chkBoxListClientes.Items[i].Selected)
                {

                    SecurityManager.AddUserToCliente(currentUser.ProviderUserKey, chkBoxListClientes.Items[i].Value);
                }
            }
        }
    }
}
