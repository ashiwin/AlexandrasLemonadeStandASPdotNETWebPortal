// Alexandra's Lemonade Stand by Ashiwin - December 2014 //

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using SC = System.Console;

public class User
{
    // Declare the variables.

    public int userIDInt;
    public string userPwdStr;
    public string userNameStr;
    public string genderStr;
    public string telephoneStr;
    public string emailStr;
    public DateTime regDt;
    public string userTypeStr;

    // Get latest User ID from User table.

    public void GetLatestUserID(OleDbConnection mDB)
    {
        string sqlQuery;
        OleDbCommand cmd;
        OleDbDataReader rdr;

        try
        {
            sqlQuery = "SELECT MAX(userID) + 1 AS latestUserID FROM userTable";

            cmd = new OleDbCommand(sqlQuery, mDB);

            rdr = cmd.ExecuteReader();

            while (rdr.Read() == true)
            {
                userIDInt = (int)rdr["latestUserID"];
                SC.WriteLine(userIDInt.ToString());
            }
            rdr.Close();
        }

        catch (Exception ex)
        {
            SC.WriteLine("Error: " + ex.Message);
        }
    }


    // Register User function.

    public void RegisterUser(OleDbConnection mDB)
    {
        string sqlQuery;
        OleDbCommand cmd;

        regDt = new DateTime();
        regDt = DateTime.Now;

        sqlQuery = "INSERT INTO userTable("
            + "userID, "
            + "userPassword, "
            + "userName, "
            + "gender, "
            + "telephone, "
            + "email, "
            + "userType, "
            + "regDateTime"
            + ""

            + ") VALUES ("

            + toSql(userIDInt) + ", "
            + toSql(userPwdStr) + ", "
            + toSql(userNameStr) + ", "
            + toSql(genderStr) + ", "
            + toSql(telephoneStr) + ", "
            + toSql(emailStr) + ", "
            + toSql(userTypeStr) + ", "
            + "'" + regDt.ToString() + "'"
            + ")";

        try
        {
            cmd = new OleDbCommand(sqlQuery, mDB);
            cmd.ExecuteNonQuery();
            SC.WriteLine("\nNew user has been added successfully.");
        }
        catch (Exception ex)
        {
            SC.WriteLine("Error Message: " + ex.Message);
        }
    }

    // Verify User function for login verification.

    public bool verifyUser(OleDbConnection mDB, int userIDInt, string userPwdStr)
    {
        string sqlQuery;
        OleDbCommand cmd;
        OleDbDataReader rdr;

        sqlQuery = "SELECT userID,userPassword,userName,userType FROM userTable Where userID= " + toSql(userIDInt);
        cmd = new OleDbCommand(sqlQuery, mDB);

        Boolean valid = false;
        Boolean HasRows = false;
        try
        {

            rdr = cmd.ExecuteReader();

            if (rdr.HasRows)
            {
                while (rdr.Read())

                    if (userPwdStr == (string)rdr["userPassword"])
                    {
                        valid = true;

                        userTypeStr = (string)rdr["userType"];

                    }
                HasRows = true;
            }
            rdr.Close();


        }
        catch (Exception ex)
        {

            SC.WriteLine(ex.Message);
        }


        if (valid == true)
        {

            return true;

        }
        else if (HasRows == false)
        {
            SC.WriteLine("Invalid User ID. Please try again.\n");

            return false;

        }
        else
        {
            SC.WriteLine("Invalid Password. Please try again.\n");

            return false;
        }

    }

    // Get User Type function for login.

    public string getUserType()
    {
        return userTypeStr;
    }

    // Helper (toSql) functions. 

    public static string toSql(int valueInt)
    {
        return valueInt.ToString();
    }

    public static string toSql(string valueStr)
    {
        return "'" + valueStr.Replace("'", "''") + "'";
    }
}

