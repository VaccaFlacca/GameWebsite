using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
	public partial class AdminStuff : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void GameSub_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                UserThings User = new UserThings();
                User.AttemptInsert(Session["UserID"].ToString(),RoundStats.Text,Score.Text,Kills.Text);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}