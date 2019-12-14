using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserThings work = new UserThings();
            int id = Int32.Parse(Session["UserId"].ToString());
            

            String[] UserInfo = new String[4];
            Array.Copy(work.GetUserData(id), UserInfo,4);


            UserName.Text = UserInfo[0];

            if(UserInfo[1] == null)
            {
                FirstName.Text = "Not Advalible";
            }
            else
            {
                FirstName.Text = UserInfo[1];
            }

            if (UserInfo[2] == null)
            {
                LastName.Text = "Not Advalible";
            }
            else
            {
                LastName.Text = UserInfo[2];
            }

            if (UserInfo[3] == null)
            {
                Email.Text = "Not Advalible";
            }
            else
            {
                Email.Text = UserInfo[3];
            }
        }

        protected void ProfileEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfileEdit.aspx");
        }
    }
}