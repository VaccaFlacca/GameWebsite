using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web2019
{
    public partial class TheNextPage : System.Web.UI.Page
    {
        int number1 = 0;
        int number2 = 0;
        int result;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["result"] != null)
            {
                result = Int32.Parse(Request.QueryString["result"]);
                
            }
            Label1.Text = result.ToString();


            // if(Request.Cookies.Get("result") != null)
            //  {
            // Response.Write("Page Load<br>");
            //  HttpCookie temp = Request.Cookies.Get("result");
            //  result = Int32.Parse(temp.Value);

            // }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Click<br>");
            number1 = Int32.Parse(TextBox1.Text);
            number2 = Int32.Parse(TextBox2.Text);
            result += number1 + number2;
            
            Response.Redirect("TheNextPage.aspx?result=" + result + "&something=blah");
          //  HttpCookie myCookie = 
          //      new HttpCookie("result", result.ToString());
           
           // Response.Cookies.Add(myCookie);

            

          

        }
    }
}