<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogoutPage.aspx.cs" Inherits="LogoutPage" Title="Logout - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            text-align: left;
        }
    .style5
    {
        height: 22px;
    }
        .style6
        {
            width: 400px;
        }
        .style7
        {
            height: 22px;
            width: 400px;
        }
        .style8
        {
            height: 61px;
        }
        .style9
        {
            width: 400px;
            height: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td align="center" bgcolor="#FFFBD3" colspan="3">
                <b>Logout Page</b></td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style8">
                </td>
            <td align="center" bgcolor="#FFFBD3" class="style9">
        Successfully logged out.<br />
        Thank you for visiting Alexandra&#39;s Lemonade Stand.<br />
                We hope to see you soon.<br />
        <br />
        <asp:LinkButton ID="LoginLinkButton" runat="server" Font-Bold="True" 
            ForeColor="Black" PostBackUrl="~/LoginPage.aspx">Return to Login Page</asp:LinkButton>
                <br />
            </td>
            <td align="center" class="style8">
                </td>
        </tr>
        <tr>
            <td align="center" class="style5">
            </td>
            <td align="center" class="style7">
            </td>
            <td align="center" class="style5">
            </td>
        </tr>
    </table>
</asp:Content>

