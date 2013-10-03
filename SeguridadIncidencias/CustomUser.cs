using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Security;

namespace SecurityServices
{
    public class CustomUser:MembershipUser
    {
     

        public string Rol
        {
            get 
            { 
                string[] roles = Roles.GetRolesForUser(this.UserName);
                return roles[0].ToString();
            }
            set 
            {
                if (Roles.RoleExists(value))
                {
                    Roles.RemoveUserFromRoles(this.UserName, Roles.GetRolesForUser(this.UserName));
                    Roles.AddUserToRole(this.UserName, value);
                }

            }
        }

        
    }
}
