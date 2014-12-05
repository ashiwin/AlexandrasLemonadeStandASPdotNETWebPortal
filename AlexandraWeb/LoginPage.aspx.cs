// Alexandra's Lemonade Stand by Ashiwin - December 2014 //

using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null)
        {
            LoggedInLabel.Visible = false;
        }
        else
        {
            Login1.Visible = false;
            ExistingMembersLabel.Visible = false;
            NewMembersLabel.Visible = false;
            registerLinkButton.Visible = false;
        }

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string strConn;

        strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data source=" + Server.MapPath("App_Data/AlexandraDB.accdb");
        OleDbConnection mDB = new OleDbConnection(strConn);

        try
        {
            mDB.Open();

            User aUser = new User();

            if (aUser.verifyUser(mDB, int.Parse(Login1.UserName), Login1.Password))
            {
                Session["userID"] = Login1.UserName.ToString();
                Session["userType"] = aUser.getUserType();

                if (Session["userType"].ToString().ToLower() == "manager")
                    Response.Redirect("ManagerPage.aspx");

                else if (Session["userType"].ToString().ToLower() == "admin staff")
                    Response.Redirect("AdminStaffPage.aspx");

                else if (Session["userType"].ToString().ToLower() == "staff")
                    Response.Redirect("StaffPage.aspx");

                else if (Session["userType"].ToString().ToLower() == "customer")
                    Response.Redirect("CustomerPage.aspx");
            }

            else
            {
                e.Authenticated = false;
            }

            mDB.Close();
        }
        catch
        {

        }

    }
}
