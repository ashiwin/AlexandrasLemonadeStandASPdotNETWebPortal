<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" Title="Login - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
    }
    .style5
    {
        width: 450px;
        text-align: center;
    }
    .style8
    {}
        .style9
        {
            text-align: center;
        }
        .style10
        {
            width: 450px;
        }
        .style11
        {
            text-align: center;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td class="style11" bgcolor="#FFFBD3" colspan="4">
            Login Page</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td align="center" class="style10">
            &nbsp;</td>
        <td align="center" class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style5" align="center" bgcolor="#FCD636">
            Welcome to Alexandra&#39;s Lemonade Stand
            <br />
            by Ashiwin.<br />
            <br />
            Kindly login or register to 
            <br />
            experience our rich web resources.</td>
        <td align="center" class="style10" bgcolor="#FFFBD3">
            <br />
            <br />
            <asp:Label ID="ExistingMembersLabel" runat="server" Font-Bold="True" 
                Text="Existing Members"></asp:Label>
            <br />
            <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate" 
                TitleText="Log In With Your Credentials" UserNameLabelText="User ID:" 
                UserNameRequiredErrorMessage="User ID is required." Width="300px" 
                BackColor="#FEEA98" BorderColor="White" BorderStyle="Solid" 
                BorderWidth="3px">
                <ValidatorTextStyle ForeColor="Black" />
                <FailureTextStyle ForeColor="Black" />
                <TitleTextStyle BackColor="#FCD636" ForeColor="Black" />
                <LoginButtonStyle Font-Names="Century Gothic" Font-Bold="False" 
                    Font-Italic="False" Font-Size="Medium" />
            </asp:Login>
            <asp:Label ID="LoggedInLabel" runat="server" Font-Bold="False" 
                Text="User is currently logged in."></asp:Label>
            <br />
            <asp:Label ID="NewMembersLabel" runat="server" Font-Bold="True" 
                Text="New Members"></asp:Label>
            <br />
    <asp:LinkButton ID="registerLinkButton" runat="server" 
    Font-Bold="True" ForeColor="Black" 
    PostBackUrl="~/RegisterCustomersPage.aspx">Register</asp:LinkButton>
            <br />
            <br />
        </td>
        <td align="center" class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td align="center" class="style10">
            &nbsp;</td>
        <td align="center" class="style8">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

