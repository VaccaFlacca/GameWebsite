using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class ProfileEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            { 
                UserThings work = new UserThings();
                int id = Int32.Parse(Session["UserId"].ToString());


                String[] UserInfo = new String[4];
                Array.Copy(work.GetUserData(id), UserInfo, 4);

                UserName.Text = UserInfo[0];
                Email.Text = UserInfo[3];
                FirstName.Text = UserInfo[1];
                LastName.Text = UserInfo[2];
            }



        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            UserThings work = new UserThings();
            work.UpdateInfo(Int32.Parse(Session["UserId"].ToString()),FirstName.Text,LastName.Text,Email.Text,UserName.Text);
            Response.Redirect("Profile.aspx");


        }
    }
}