using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.OleDb;

/// <summary>
/// Summary description for DbFunctions
/// </summary>
public class Dbfunction
{
    private string connectionstr;

    public Dbfunction()
    {
        //this.connectionstr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + AppDomain.CurrentDomain.BaseDirectory+"/App_Data/Database4.accdb";
        this.connectionstr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\omarProject\viewmodel\AppData\OmarData.accdb";
    }
    // update, insert , delete 
    public void DoCommand(string mysql)
    {
        OleDbConnection connectObj = new OleDbConnection(connectionstr);
        OleDbCommand myCommandObj = new OleDbCommand(mysql, connectObj);
        connectObj.Open();
        myCommandObj.ExecuteNonQuery();
        connectObj.Close();
    }
    // select
    public DataSet Selectcommand(string mysql)
    {
        OleDbConnection connectObj = new OleDbConnection(connectionstr);
        OleDbDataAdapter da = new OleDbDataAdapter(mysql, connectObj);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
   
}