using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            if(Session["UserID"] != null)
            {
                Session.Clear();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void GameButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void Leaderboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("LeaderBoard.aspx");
        }

        protected void profile_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("Profile.aspx");
            }
        }
    }
}