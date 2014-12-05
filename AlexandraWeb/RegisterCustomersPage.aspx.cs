// Alexandra's Lemonade Stand by Ashiwin - December 2014 //

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class RegisterCustomersPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        registrationStatusLabel.Visible = false;
        registerAnotherCustomerButton.Visible = false;

        if (Session["userType"] == null)
        {
            homeLinkButton.Text = "Back to Login Page";
            homeLinkButton.PostBackUrl = "LoginPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "manager")
        {
            homeLinkButton.Text = "Back to Manager Menu";
            homeLinkButton.PostBackUrl = "ManagerPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "admin staff")
        {
            homeLinkButton.Text = "Back to Admin Staff Menu";
            homeLinkButton.PostBackUrl = "AdminStaffPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "staff")
        {
            homeLinkButton.Text = "Back to Staff Menu";
            homeLinkButton.PostBackUrl = "StaffPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "customer")
        {
            homeLinkButton.Text = "Back to Customer Menu";
            homeLinkButton.PostBackUrl = "CustomerPage.aspx";
        }

        string strConn;

        strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data source=" + Server.MapPath("App_Data/AlexandraDB.accdb");

        OleDbConnection mDB = new OleDbConnection(strConn);

        try
        {
            mDB.Open();

            User aUser = new User();

            aUser.GetLatestUserID(mDB);

            userIDLabel.Text = aUser.userIDInt.ToString();

            mDB.Close();
        }
        catch
        {

        }

    }

    protected void clearForm()
    {
        userPasswordTextBox.Text = "";
        confirmUserPasswordTextBox.Text = "";
        userNameTextBox.Text = "";
        genderRadioButtonList.SelectedIndex = 0;
        telephoneTextBox.Text = "";
        emailTextBox.Text = "";
    }

    protected void disableForm()
    {
        userPasswordTextBox.Enabled = false;
        confirmUserPasswordTextBox.Enabled = false;
        userNameTextBox.Enabled = false;
        genderRadioButtonList.Enabled = false;
        telephoneTextBox.Enabled = false;
        emailTextBox.Enabled = false;
    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        string strConn;

        strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data source=" + Server.MapPath("App_Data/AlexandraDB.accdb");

        OleDbConnection mDB = new OleDbConnection(strConn);

        try
        {
            mDB.Open();

            User aUser = new User();

            aUser.userIDInt = int.Parse(userIDLabel.Text);
            aUser.userPwdStr = userPasswordTextBox.Text;
            aUser.userNameStr = userNameTextBox.Text;
            aUser.genderStr = genderRadioButtonList.SelectedValue;
            aUser.telephoneStr = telephoneTextBox.Text;
            aUser.emailStr = emailTextBox.Text;
            aUser.userTypeStr = "Customer";

            aUser.RegisterUser(mDB);
            
            mDB.Close();

            disableForm();

            submitButton.Visible = false;
            clearButton.Visible = false;

            registrationStatusLabel.Visible = true;
            registrationStatusLabel.Text = "Account registration is successful.";

            registerAnotherCustomerButton.Visible = true;
        }
        catch (Exception ex)
        {
            registrationStatusLabel.Visible = true;
            registrationStatusLabel.Text = "Error: " + ex.Message;
        }
    }

    protected void clearButton_Click(object sender, EventArgs e)
    {
        clearForm();
    }

    protected void registerAnotherCustomerButton_Click(object sender, EventArgs e)
    {
        clearForm();
        Response.Redirect(Request.RawUrl);
    }
}
