using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class UserThings
{
    public int UserId = 0;


    public UserThings()
    {

    }


    public String[] GetUserData(int UserID)
    {

        DBManager myManager = new DBManager();

        string myQuery = "spGetUserData";
        SqlParameter[] myParameters = new SqlParameter[1];
        myParameters[0] = new SqlParameter("UserID", UserID);

        DataSet myDataSet = myManager.CreateDataSet(myQuery, myParameters);

        String[] UserInfo = new String[4];

        string UserName = myDataSet.Tables[0].Rows[0]["UserName"].ToString();
        string FirstName = myDataSet.Tables[0].Rows[0]["FirstName"].ToString();
        string LastName = myDataSet.Tables[0].Rows[0]["LastName"].ToString();
        string email = myDataSet.Tables[0].Rows[0]["email"].ToString();

        UserInfo[0] = UserName;
        UserInfo[1] = FirstName;
        UserInfo[2] = LastName;
        UserInfo[3] = email;

        return UserInfo;
    }

    public int CheckLogin(string UserName, string password)
    {

        DBManager DBmanager = new DBManager();

        string myQuery = "spCheckLogin";




        SqlParameter[] myParameter = new SqlParameter[2];
        myParameter[0] = new SqlParameter("UserName", UserName);
        myParameter[1] = new SqlParameter("Password", password);

        DataSet myData = DBmanager.CreateDataSet(myQuery, myParameter);

        //finalresult = DBmanager.executeNonQuery(myQuery, myParameter);

        int UserID = Int32.Parse(myData.Tables[0].Rows[0]["ID"].ToString());



        return UserID;
    }


    public void UpdateInfo(int id,string firstName, string lastName, string email,string userName)
    {
        DBManager DBmanager = new DBManager();
        string myQuery = "spUpdateUser";

        SqlParameter[] myParameter = new SqlParameter[5];
        myParameter[0] = new SqlParameter("ID", id);
        myParameter[1] = new SqlParameter("FirstName", firstName);
        myParameter[2] = new SqlParameter("LastName", lastName);
        myParameter[3] = new SqlParameter("Email", email);
        myParameter[4] = new SqlParameter("UserName", userName);

        DBmanager.executeNonQuery(myQuery, myParameter);
    }

    public DataSet DecendingScore()
    {
        DBManager DBmanager = new DBManager();

        string myQuery = "spDescScore";

        DataSet LeaderBoard = DBmanager.createDataSet(myQuery);

        return LeaderBoard;

    }

    public DataSet DecendingRound()
    {
        DBManager DBmanager = new DBManager();

        string myQuery = "spDescRound";

        DataSet LeaderBoard = DBmanager.createDataSet(myQuery);

        return LeaderBoard;

    }

    public DataSet DecendingKills()
    {
        DBManager DBmanager = new DBManager();

        string myQuery = "spDescKills";

        DataSet LeaderBoard = DBmanager.createDataSet(myQuery);

        return LeaderBoard;

    }

    public void RegistarPlayer(string UserName,String Password,String Email)
    {
        DBManager DBmanager = new DBManager();

        string myQuery = "spInsertPlayer";

        SqlParameter[] myParam = new SqlParameter[3];
        myParam[0] = new SqlParameter("UserName", UserName);
        myParam[1] = new SqlParameter("Password",Password);
        myParam[2] = new SqlParameter("Email",Email);

        DBmanager.executeNonQuery(myQuery,myParam);



    }

    public void AttemptInsert(string UserId,string Round,string Score,string kills)
    {
        DBManager DBmanager = new DBManager();

        string myQuery = "spInsertAttempt";

        SqlParameter[] myParam = new SqlParameter[4];
        myParam[0] = new SqlParameter("UserID", UserId);
        myParam[1] = new SqlParameter("Round", Round);
        myParam[2] = new SqlParameter("score", Score);
        myParam[3] = new SqlParameter("kill",kills);

        DBmanager.executeNonQuery(myQuery,myParam);

    }

}
