using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class DBManager
{
    string myConnnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
    SqlConnection myConnection;

    public DBManager()
    {

    }

    private SqlConnection openDatabase()
    {
        myConnection = new SqlConnection(myConnnectionString);
        myConnection.Open();
        return myConnection;
    }

    private void closeDatabase()
    {
        myConnection.Close();
    }

    public DataSet CreateDataSet(String query, SqlParameter[] parameters)
    {
        openDatabase();
        string myQuery = query;

        DataSet myDataSet = new DataSet();
        SqlCommand myCommand = new SqlCommand(myQuery);
        myCommand.Connection = myConnection;
        myCommand.CommandType = CommandType.StoredProcedure;
        myCommand.Parameters.AddRange(parameters);

        SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);
        myAdapter.Fill(myDataSet);

        closeDatabase();

        return myDataSet;
    }

    public DataSet createDataSet(String query)
    {
        openDatabase();
        string myQuery = query;

        DataSet myDataSet = new DataSet();
        SqlCommand myCommmand = new SqlCommand(myQuery);
        myCommmand.Connection = myConnection;
        myCommmand.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter myAdapter = new SqlDataAdapter(myCommmand);
        myAdapter.Fill(myDataSet);
        closeDatabase();


        return myDataSet;
    }

    public int executeNonQuery(String query, SqlParameter[] parameters1)
    {

        openDatabase();
        string myQuery = query;

        SqlCommand myCommand = new SqlCommand(myQuery);
        myCommand.Parameters.Clear();
        myCommand.Connection = myConnection;
        myCommand.CommandType = CommandType.StoredProcedure;

        myCommand.Parameters.AddRange(parameters1);
        int rows = myCommand.ExecuteNonQuery();
        return rows;

    }

}
