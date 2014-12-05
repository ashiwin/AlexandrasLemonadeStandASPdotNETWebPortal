<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManagerPage.aspx.cs" Inherits="ManagerPage" Title="Manager Menu - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 111px;
        }
        .style6
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
                <b>Manager Menu</b></td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
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
            <td class="style5">
                &nbsp;</td>
            <td class="style6" align="center" bgcolor="#FFFBD3">
                <asp:LinkButton ID="ViewUsersLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/ViewUsersPage.aspx">View Users</asp:LinkButton>
                                </td>
            <td class="style6" align="center" bgcolor="#FFFBD3">
                <asp:LinkButton ID="ViewProductsLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/ViewProductsPage.aspx">View Products</asp:LinkButton>
                                </td>
            <td class="style6" align="center" bgcolor="#FFFBD3">
                <asp:LinkButton ID="ManageOrdersLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/ManageOrdersPage.aspx">View/Delete Orders</asp:LinkButton>
                                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" align="center" bgcolor="#FFFBD3">
                <asp:LinkButton ID="ManageUsersLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/ManageUsersPage.aspx">Add/Edit/Delete Users</asp:LinkButton>
                                </td>
            <td class="style6" align="center" bgcolor="#FFFBD3">
                <asp:LinkButton ID="ManageProductsLinkButton" runat="server" 
                    Font-Bold="True" ForeColor="Black" 
                    PostBackUrl="~/ManageProductsPage.aspx">Add/Edit/Delete Products</asp:LinkButton>
                                &nbsp;<td class="style6" align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

