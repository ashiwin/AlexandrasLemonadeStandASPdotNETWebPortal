<%@ Page Title="Customer Registration - Alexandra's Lemonade Stand by Ashiwin" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterCustomersPage.aspx.cs" Inherits="RegisterCustomersPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 150px;
        }
        .style6
        {
            width: 350px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr align="center">
            <td bgcolor="#FFFBD3" colspan="4">
                <b>Customer Registration Form</b></td>
        </tr>
        <tr>
            <td>
                <b></b>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td class="style5">
                &nbsp;</td>
            <td class="style6" bgcolor="#FCD636">
                <b>User ID</b></td>
            <td class="style6" bgcolor="#FFFBD3">
                <asp:Label ID="userIDLabel" runat="server" Text="User ID Value"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;</td>
            <td bgcolor="#FCD636">
                <b>Password</b></td>
            <td bgcolor="#FFFBD3">
                <asp:TextBox ID="userPasswordTextBox" runat="server" Width="220px" 
                    TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="userPasswordRequiredFieldValidator" runat="server"
                    ControlToValidate="userPasswordTextBox" ErrorMessage="Password field cannot be left blank."
                    Display="Dynamic" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;</td>
            <td bgcolor="#FCD636">
                <b>Confirm Password</b></td>
            <td bgcolor="#FFFBD3">
                <asp:TextBox ID="confirmUserPasswordTextBox" runat="server" Width="220px" 
                    TextMode="Password"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="confirmUserPasswordCompareValidator" runat="server" 
                    ErrorMessage="Passwords do not match." ControlToCompare="confirmUserPasswordTextBox"
                    ControlToValidate="userPasswordTextBox" Display="Dynamic" 
                    ForeColor="Black"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;</td>
            <td bgcolor="#FCD636">
                <b>Name</b></td>
            <td bgcolor="#FFFBD3">
                <asp:TextBox ID="userNameTextBox" runat="server" Width="220px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="userNameRequiredFieldValidator" runat="server"
                    ControlToValidate="userNameTextBox" ErrorMessage="Name field cannot be left blank."
                    Display="Dynamic" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;</td>
            <td bgcolor="#FCD636">
                <b>Gender</b></td>
            <td bgcolor="#FFFBD3" align="center">
                <asp:RadioButtonList ID="genderRadioButtonList" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;</td>
            <td bgcolor="#FCD636">
                <b>Telephone</b></td>
            <td bgcolor="#FFFBD3">
                <asp:TextBox ID="telephoneTextBox" runat="server" Width="220px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="telephoneRequiredFieldValidator" runat="server"
                    ControlToValidate="telephoneTextBox" ErrorMessage="Telephone field cannot be left blank."
                    Display="Dynamic" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;</td>
            <td bgcolor="#FCD636">
                <b>Email</b></td>
            <td bgcolor="#FFFBD3">
                <asp:TextBox ID="emailTextBox" runat="server" Width="220px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server"
                    ControlToValidate="emailTextBox" ErrorMessage="Email field cannot be left blank."
                    Display="Dynamic" ForeColor="Black"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" runat="server"
                    ErrorMessage="Invalid email address."    ControlToValidate="emailTextBox" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Display="Dynamic" ForeColor="Black"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td colspan="4">
                <span class="style3"><font color="white">*</font></span><asp:Label ID="registrationStatusLabel" runat="server" 
                    Text="Registration Status"></asp:Label>
                <span class="style3"><font color="white">*</font></span></td>
        </tr>
        <tr align="center">
            <td colspan="4">
                <asp:Button ID="submitButton" runat="server" Text="Submit" 
                    Font-Names="Century Gothic" onclick="submitButton_Click" 
                    style="font-size: medium" />
                <asp:Button ID="registerAnotherCustomerButton" runat="server" 
                    Text="Register Another Customer" Font-Names="Century Gothic" 
                    onclick="registerAnotherCustomerButton_Click" style="font-size: medium" 
                    CausesValidation="False" />
                <asp:Button ID="clearButton" runat="server" Text="Clear" 
                    Font-Names="Century Gothic" onclick="clearButton_Click" 
                    style="font-size: medium" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td colspan="4">
                <asp:LinkButton ID="homeLinkButton" runat="server" Font-Bold="True" 
                    ForeColor="Black" CausesValidation="False">Back to Home</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

