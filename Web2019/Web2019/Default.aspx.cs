using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2019
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //String test = txtFN.Text;
            String dateSelected = Calendar1.SelectedDate.ToShortDateString();
            txtFN.Text = dateSelected;
            Response.Redirect("TheNextPage.aspx");
            Server.Transfer("TheNextPage.aspx");
        }
    }
}