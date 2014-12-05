// Alexandra's Lemonade Stand by Ashiwin - December 2014 //

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using SC = System.Console;

public class Product
{
    // Declare the variables.

    public string productIDStr;
    public string productNameStr;
    public string productTypeStr;
    public decimal unitPriceDec;
    public string unitPriceStr;

    public void getProductDetails(OleDbConnection mDB, string productIDStr)
    {
        string sqlQuery;
        OleDbCommand cmd;
        OleDbDataReader rdr;

        try
        {
            sqlQuery = "SELECT * FROM productTable WHERE productID = " + toSql(productIDStr);

            cmd = new OleDbCommand(sqlQuery, mDB);

            rdr = cmd.ExecuteReader();

            while (rdr.Read() == true)
            {
                productIDStr = (string)rdr["productID"];
                productNameStr = (string)rdr["productName"];
                productTypeStr = (string)rdr["productType"];
                unitPriceDec = (decimal)rdr["unitPrice"];

                SC.WriteLine(productIDStr + "\t" + productNameStr + "\t" + productTypeStr + "\t" + unitPriceDec.ToString("C"));
            }
            rdr.Close();
        }

        catch (Exception ex)
        {
            SC.WriteLine("Error: " + ex.Message);
        }
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