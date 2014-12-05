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

public partial class PlaceOrdersPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        productNameLabel.Visible = false;
        unitPricePlaceHolderLabel.Visible = false;
        quantityTextBox.Visible = false;
        sumButton.Enabled = false;
        subTotalPlaceHolderLabel.Visible = false;
        orderStatusLabel.Visible = false;
        submitOrderButton.Enabled = false;
        placeAnotherOrderButton.Visible = false;

        if (Session["userType"] == null)
        {
            productIDTextBox.Visible = false;
            checkProductButton.Enabled = false;
            sumButton.Enabled = false;
            clearButton.Enabled = false;
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
            HomeLinkButton.Text = "Back to Admin Staff Menu";
            HomeLinkButton.PostBackUrl = "AdminStaffPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "staff")
        {
            HomeLinkButton.Text = "Back to Staff Menu";
            HomeLinkButton.PostBackUrl = "StaffPage.aspx";
        }
        else if (Session["userType"].ToString().ToLower() == "customer")
        {
            HomeLinkButton.Text = "Back to Customer Menu";
            HomeLinkButton.PostBackUrl = "CustomerPage.aspx";
        }
    }

    protected void clearForm()
    {
        productIDTextBox.Text = "";
        productNameLabel.Text = "";
        unitPricePlaceHolderLabel.Text = "";
        unitPriceLabel.Text = "";
        quantityTextBox.Text = "";
        subTotalPlaceHolderLabel.Text = "";
        subTotalLabel.Text = "";

        productIDTextBox.Enabled = true;
        checkProductButton.Enabled = true;
    }

    protected void submitOrderButton_Click(object sender, EventArgs e)
    {
        string strConn;

        strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data source=" + Server.MapPath("App_Data/AlexandraDB.accdb");

        OleDbConnection mDB = new OleDbConnection(strConn);

        try
        {
            mDB.Open();

            Order aOrder = new Order();

            aOrder.productIDStr = productIDTextBox.Text;
            aOrder.productQtyInt = Convert.ToInt32(quantityTextBox.Text);
            aOrder.totalDec = Convert.ToDecimal(subTotalLabel.Text);
            aOrder.userIDStr = Convert.ToString(Session["userID"]);

            aOrder.submitOrder(mDB);

            productIDTextBox.Visible = true;
            productIDTextBox.Enabled = false;
            productNameLabel.Visible = true;
            unitPricePlaceHolderLabel.Visible = true;
            quantityTextBox.Visible = true;
            quantityTextBox.Enabled = false;
            sumButton.Visible = true;
            sumButton.Enabled = false;
            subTotalPlaceHolderLabel.Visible = true;
            submitOrderButton.Visible = false;
            placeAnotherOrderButton.Visible = true;
            clearButton.Visible = false;

            orderStatusLabel.Visible = true;
            orderStatusLabel.Text = "Order is successful.";

            mDB.Close();
        }
        catch (Exception ex)
        {
            orderStatusLabel.Visible = true;
            orderStatusLabel.Text = "Error: " + ex.Message;
        }
    }
    protected void checkProductButton_Click(object sender, EventArgs e)
    {
        string strConn;

        strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data source=" + Server.MapPath("App_Data/AlexandraDB.accdb");

        OleDbConnection mDB = new OleDbConnection(strConn);

        try
        {
            mDB.Open();

            Product aProduct = new Product();

            aProduct.productIDStr = productIDTextBox.Text;

            aProduct.getProductDetails(mDB, aProduct.productIDStr);

            productIDTextBox.Enabled = false;
            checkProductButton.Enabled = false;
            productNameLabel.Visible = true;
            productNameLabel.Text = aProduct.productNameStr;
            unitPricePlaceHolderLabel.Visible = true;
            unitPricePlaceHolderLabel.Text = aProduct.unitPriceDec.ToString("C");
            quantityTextBox.Visible = true;
            quantityTextBox.Enabled = true;
            sumButton.Enabled = true;

            unitPriceLabel.Text = aProduct.unitPriceDec.ToString();

            mDB.Close();
        }
        catch (Exception ex)
        {
            orderStatusLabel.Visible = true;
            orderStatusLabel.Text = "Error: " + ex.Message;
        }
    }
    protected void sumButton_Click(object sender, EventArgs e)
    {
        try
        {
            Order aOrder = new Order();

            aOrder.unitPriceStr = unitPriceLabel.Text;
            aOrder.productQtyStr = quantityTextBox.Text;

            aOrder.calculateTotal();

            productIDTextBox.Visible = true;
            productIDTextBox.Enabled = false;
            productNameLabel.Visible = true;
            unitPricePlaceHolderLabel.Visible = true;
            quantityTextBox.Visible = true;
            quantityTextBox.Enabled = false;
            sumButton.Visible = true;
            sumButton.Enabled = false;
            subTotalPlaceHolderLabel.Visible = true;
            subTotalPlaceHolderLabel.Text = aOrder.totalDec.ToString("C");
            submitOrderButton.Enabled = true;

            subTotalLabel.Text = aOrder.totalDec.ToString();
        }
        catch (Exception ex)
        {
            productIDTextBox.Visible = true;
            productIDTextBox.Enabled = false;
            productNameLabel.Visible = true;
            unitPricePlaceHolderLabel.Visible = true;
            quantityTextBox.Visible = true;
            quantityTextBox.Enabled = true;
            sumButton.Visible = true;
            sumButton.Enabled = true;
            submitOrderButton.Enabled = true;

            orderStatusLabel.Visible = true;
            orderStatusLabel.Text = "Error: " + ex.Message;
        }
    }
    protected void clearButton_Click(object sender, EventArgs e)
    {
        clearForm();
    }
    protected void placeAnotherOrderButton_Click(object sender, EventArgs e)
    {
        clearForm();
        Response.Redirect(Request.RawUrl);
    }
}
