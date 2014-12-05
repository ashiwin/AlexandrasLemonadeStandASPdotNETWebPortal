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

public partial class ManageProductsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null)
        {
            ManageProductsLabel.Visible = false;
            ManageProductsListBox.Visible = false;
            ManageProductsDetailsView.Visible = false;
            HomeLinkButton.Text = "Back to Login Page";
            HomeLinkButton.PostBackUrl = "LoginPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "manager")
        {
            HomeLinkButton.Text = "Back to Manager Menu";
            HomeLinkButton.PostBackUrl = "ManagerPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "admin staff")
        {
            ManageProductsLabel.Visible = false;
            ManageProductsListBox.Visible = false;
            ManageProductsDetailsView.Visible = false;
            HomeLinkButton.Text = "Back to Admin Staff Menu";
            HomeLinkButton.PostBackUrl = "AdminStaffPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "staff")
        {
            ManageProductsLabel.Visible = false;
            ManageProductsListBox.Visible = false;
            ManageProductsDetailsView.Visible = false;
            HomeLinkButton.Text = "Back to Staff Menu";
            HomeLinkButton.PostBackUrl = "StaffPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "customer")
        {
            ManageProductsLabel.Visible = false;
            ManageProductsListBox.Visible = false;
            ManageProductsDetailsView.Visible = false;
            HomeLinkButton.Text = "Back to Customer Menu";
            HomeLinkButton.PostBackUrl = "CustomerPage.aspx";
        }
    }
}
