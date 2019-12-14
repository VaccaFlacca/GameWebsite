using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project
{
    public partial class LeaderBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserThings Work = new UserThings();
            DataSet LeaderBoardData = new DataSet();
            LeaderBoardData = Work.DecendingScore();


            for (int i = 0; i < LeaderBoardData.Tables[0].Rows.Count; i++)
            {
                string UserName = LeaderBoardData.Tables[0].Rows[i]["UserName"].ToString();
                string Round = LeaderBoardData.Tables[0].Rows[i]["Round"].ToString();
                string kills = LeaderBoardData.Tables[0].Rows[i]["kills"].ToString();
                string score = LeaderBoardData.Tables[0].Rows[i]["score"].ToString();

                Things.Text += "User Name: " + UserName + " Round: " + Round + " Kills: " + kills + " Score: " + score + "<br />";
            }

            
        }

        protected void DecRound_Click(object sender, EventArgs e)
        {
            UserThings Work = new UserThings();
            DataSet LeaderBoardData = new DataSet();
            LeaderBoardData = Work.DecendingRound();
            Things.Text = "";

            for (int i = 0; i < LeaderBoardData.Tables[0].Rows.Count; i++)
            {
                string UserName = LeaderBoardData.Tables[0].Rows[i]["UserName"].ToString();
                string Round = LeaderBoardData.Tables[0].Rows[i]["Round"].ToString();
                string kills = LeaderBoardData.Tables[0].Rows[i]["kills"].ToString();
                string score = LeaderBoardData.Tables[0].Rows[i]["score"].ToString();

                Things.Text += "User Name: " + UserName + " Round: " + Round + " Kills: " + kills + " Score: " + score + "<br />";
            }
        }

        protected void DecKills_Click(object sender, EventArgs e)
        {
            UserThings Work = new UserThings();
            DataSet LeaderBoardData = new DataSet();
            LeaderBoardData = Work.DecendingKills();
            Things.Text = "";

            for (int i = 0; i < LeaderBoardData.Tables[0].Rows.Count; i++)
            {
                string UserName = LeaderBoardData.Tables[0].Rows[i]["UserName"].ToString();
                string Round = LeaderBoardData.Tables[0].Rows[i]["Round"].ToString();
                string kills = LeaderBoardData.Tables[0].Rows[i]["kills"].ToString();
                string score = LeaderBoardData.Tables[0].Rows[i]["score"].ToString();

                Things.Text += "User Name: " + UserName + " Round: " + Round + " Kills: " + kills + " Score: " + score + "<br />";
            }
        }

        protected void DecScore_Click(object sender, EventArgs e)
        {
            UserThings Work = new UserThings();
            DataSet LeaderBoardData = new DataSet();
            LeaderBoardData = Work.DecendingScore();
            Things.Text = "";
            

            for (int i = 0; i < LeaderBoardData.Tables[0].Rows.Count; i++)
            {
                string UserName = LeaderBoardData.Tables[0].Rows[i]["UserName"].ToString();
                string Round = LeaderBoardData.Tables[0].Rows[i]["Round"].ToString();
                string kills = LeaderBoardData.Tables[0].Rows[i]["kills"].ToString();
                string score = LeaderBoardData.Tables[0].Rows[i]["score"].ToString();

                Things.Text += "User Name: " + UserName + "\t" + " Round: " + Round + " Kills: " + kills + " Score: " + score + "<br />";
            }
        }
    }
}