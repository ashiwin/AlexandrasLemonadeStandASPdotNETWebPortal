<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StaffPage.aspx.cs" Inherits="StaffPage" Title="Staff Menu - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 250px;
        }
        .style6
        {
            width: 111px;
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
                <b>Staff Menu</b></td>
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
                <asp:LinkButton ID="ManageOrdersLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/ManageOrdersPage.aspx">View/Delete Orders</asp:LinkButton>
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

