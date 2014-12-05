// Alexandra's Lemonade Stand by Ashiwin - December 2014 //

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using SC = System.Console;

public class Order
{
    // Declare the variables.

    public int orderIDint;
    public string userIDStr;
    public string productIDStr;
    public int productQtyInt;
    public DateTime orderDt;
    public decimal totalDec;
    public decimal unitPriceDec;
    public string productQtyStr;
    public string unitPriceStr;

    public void calculateTotal()
    {
        productQtyInt = Convert.ToInt32(productQtyStr);
        unitPriceDec = Convert.ToDecimal(unitPriceStr);

        totalDec = productQtyInt * unitPriceDec;
    }

    public void submitOrder(OleDbConnection mDB)
    {
        orderDt = new DateTime();
        orderDt = DateTime.Now;

        string sqlQuery;
        OleDbCommand cmd;

        sqlQuery = " INSERT INTO orderTable ("
            + "userID,"
            + "productID,"
            + "productQty,"
            + "subTotal,"
            + "orderDateTime"

            + ")VALUES("

            + toSql(userIDStr) + ","
            + toSql(productIDStr) + ","
            + toSql(productQtyInt) + ","
            + toSql(totalDec.ToString("C")) + ","
            + "'" + orderDt.ToString() + "'"
            + ")";

        try
        {
            cmd = new OleDbCommand(sqlQuery, mDB);
            cmd.ExecuteNonQuery();
            SC.WriteLine("\nOrder is successfully recorded.");
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

    public static string toSql(double valueDouble)
    {
        return valueDouble.ToString();
    }

    public static string toSql(decimal valueDec)
    {
        return valueDec.ToString();
    }

    public static string toSql(string valueStr)
    {
        return "'" + valueStr.Replace("'", "''") + "'";
    }
}