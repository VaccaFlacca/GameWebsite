using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            int test = 0;

            UserThings doing = new UserThings();

            test = doing.CheckLogin(UserName.Text.Trim(), Password.Text.Trim());
            Session["UserId"] = doing.CheckLogin(UserName.Text.Trim(), Password.Text.Trim());

            if (test != 0)
            {
                    Response.Redirect("MainPage.aspx");

            }
            else
            {

                Password_error.Text = "Check your User Name and password";

            }
        }

        protected void Registar_Click(object sender, EventArgs e)
        {
            PasswordValidator.Enabled = false;
            
            UserNameValidator.Enabled = false;
            PasswordValidator.IsValid = true;
            UserNameValidator.IsValid = true;
            Response.Redirect("Registar.aspx");
        }
    }
}