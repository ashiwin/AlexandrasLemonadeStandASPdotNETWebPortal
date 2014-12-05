<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerPage.aspx.cs" Inherits="CustomerPage" Title="Customer Menu - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style4
        {
            width: 100%;
        }
        .style6
        {
            width: 111px;
        }
        .style5
        {
            width: 250px;
        }
        .style7
        {
            width: 250px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td align="center" colspan="5" bgcolor="#FFFBD3">
                <b>Customer Menu</b></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7" align="center" bgcolor="#FCD636">
                Manage Users</td>
            <td class="style7" align="center" bgcolor="#FCD636">
                Manage Products</td>
            <td class="style7" align="center" bgcolor="#FCD636">
                Manage Orders</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5" align="center" bgcolor="#FFFBD3">
                <asp:LinkButton ID="CustomerRegistrationLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/RegisterCustomersPage.aspx">Register Customers</asp:LinkButton>
            </td>
            <td class="style5" align="center" bgcolor="#FFFBD3">
                <asp:LinkButton ID="ViewProductsLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/ViewProductsPage.aspx">View Products</asp:LinkButton>
            </td>
            <td class="style5" align="center" bgcolor="#FFFBD3">
                <asp:LinkButton ID="PlaceOrdersLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/PlaceOrdersPage.aspx">Place Orders</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

