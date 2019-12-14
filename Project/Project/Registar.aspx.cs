using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Registar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            UserThings Doing = new UserThings();

            if(EmailBox.Text == null)
            {
                EmailBox.Text = " ";
                Doing.RegistarPlayer(UserName.Text, Password.Text, EmailBox.Text);
            }
            else
            {
                Doing.RegistarPlayer(UserName.Text, Password.Text, EmailBox.Text);
            }
                

        }
    }
}