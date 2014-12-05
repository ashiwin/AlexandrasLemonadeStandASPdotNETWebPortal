// Alexandra's Lemonade Stand by Ashiwin - December 2014 //

using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null)
        {
            homeLinkButton.Text = "Register";
            homeLinkButton.PostBackUrl = "RegisterCustomersPage.aspx";
            logLinkButton.Text = "Login";
            logLinkButton.PostBackUrl = "LoginPage.aspx";
            greetingLabel.Text = "";
        }
        else if (Session["userType"].ToString().ToLower() == "manager")
        {
            homeLinkButton.PostBackUrl = "ManagerPage.aspx";
            greetingLabel.Text = "Welcome to Alexandra's Lemonade Stand. (" + (string)Session["userType"] + ", ID: " + (string)Session["userID"] + ")";
        }
        else if (Session["userType"].ToString().ToLower() == "admin staff")
        {
            homeLinkButton.PostBackUrl = "AdminStaffPage.aspx";
            greetingLabel.Text = "Welcome to Alexandra's Lemonade Stand. (" + (string)Session["userType"] + ", ID: " + (string)Session["userID"] + ")";
        }
        else if (Session["userType"].ToString().ToLower() == "staff")
        {
            homeLinkButton.PostBackUrl = "StaffPage.aspx";
            greetingLabel.Text = "Welcome to Alexandra's Lemonade Stand. (" + (string)Session["userType"] + ", ID: " + (string)Session["userID"] + ")";
        }
        else if (Session["userType"].ToString().ToLower() == "customer")
        {
            homeLinkButton.PostBackUrl = "CustomerPage.aspx";
            greetingLabel.Text = "Welcome to Alexandra's Lemonade Stand. (" + (string)Session["userType"] + ", ID: " + (string)Session["userID"] + ")";
        }
    }
}
