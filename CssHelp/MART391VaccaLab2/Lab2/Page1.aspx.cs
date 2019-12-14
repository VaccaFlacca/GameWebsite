using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSomething_Click(object sender, EventArgs e)
        {
            string textName = TxtName.Text;
            lblMessage.Text = "Hello there: " + textName;
        }

        protected void NewPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page2.aspx");
        }

        
    }
}