<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlaceOrdersPage.aspx.cs" Inherits="PlaceOrdersPage" Title="Place Orders - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            text-decoration: underline;
        }
        .style44
        {
        }
        .style45
        {
            height: 31px;
            width: 472px;
        }
        .style46
        {
            width: 206px;
            height: 31px;
            font-weight: bold;
        }
        .style57
        {
            height: 31px;
            width: 399px;
        }
        .style59
        {
            height: 31px;
            width: 533px;
        }
        .style60
        {
            width: 533px;
            height: 31px;
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="center" colspan="5" bgcolor="#FFFBD3">
                <b>Place Orders</b></td>
        </tr>
        <tr>
            <td class="style44" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style9" colspan="5">
                Order Form</td>
        </tr>
        <tr>
            <td class="style44" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style59">
            </td>
            <td class="style46" align="center" bgcolor="#FCD636">
                Product ID</td>
            <td class="style57" bgcolor="#FFFBD3" align="center">
                <asp:TextBox ID="productIDTextBox" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style46" align="center" bgcolor="#FCD636">
                <asp:Button ID="checkProductButton" runat="server" 
                    onclick="checkProductButton_Click" 
                    style="font-family: 'Century Gothic'; font-size: medium" Text="Check" 
                    Width="80px" />
            </td>
            <td class="style45">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style60">
                &nbsp;</td>
            <td class="style46" align="center" bgcolor="#FCD636">
                Product</td>
            <td class="style57" bgcolor="#FFFBD3" align="center">
                <asp:Label ID="productNameLabel" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td class="style46" bgcolor="#FCD636">
                &nbsp;</td>
            <td class="style46">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style59">
            </td>
            <td class="style46" align="center" bgcolor="#FCD636">
                Unit Price</td>
            <td class="style57" bgcolor="#FFFBD3" align="center">
                <asp:Label ID="unitPricePlaceHolderLabel" runat="server" Text="Unit Price"></asp:Label>
            </td>
            <td class="style46" bgcolor="#FCD636">
            </td>
            <td class="style46">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style59">
            </td>
            <td class="style46" align="center" bgcolor="#FCD636">
                Quantity</td>
            <td class="style57" bgcolor="#FFFBD3" align="center">
                <asp:TextBox ID="quantityTextBox" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style46" align="center" bgcolor="#FCD636">
                <asp:Button ID="sumButton" runat="server" onclick="sumButton_Click" 
                    style="font-family: 'Century Gothic'; font-size: medium" Text="Sum" 
                    Width="80px" />
            </td>
            <td class="style46">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style59">
                &nbsp;</td>
            <td class="style46" align="center" bgcolor="#FCD636">
                Sub Total</td>
            <td class="style57" bgcolor="#FFFBD3" align="center">
                <asp:Label ID="subTotalPlaceHolderLabel" runat="server" Text="Sub Total"></asp:Label>
            </td>
            <td class="style46" bgcolor="#FCD636">
                &nbsp;</td>
            <td class="style46">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style44" align="center" colspan="5">
                <asp:Label ID="unitPriceLabel" runat="server" Text="Unit Price" Visible="False"></asp:Label>
                <asp:Label ID="orderStatusLabel" runat="server" Text="Order Status"></asp:Label>
                <asp:Label ID="subTotalLabel" runat="server" Text="Sub Total" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style20" align="center" colspan="5">
                <asp:Button ID="submitOrderButton" runat="server" 
                    onclick="submitOrderButton_Click" 
                    style="font-size: medium; font-family: 'Century Gothic'" Text="Submit" />
                <asp:Button ID="placeAnotherOrderButton" runat="server" 
                    onclick="placeAnotherOrderButton_Click" 
                    style="font-size: medium; font-family: 'Century Gothic'" 
                    Text="Place Another Order" />
                <asp:Button ID="clearButton" runat="server" onclick="clearButton_Click" 
                    style="font-family: 'Century Gothic'; font-size: medium" Text="Clear" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style7" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style7" colspan="5">
                <asp:LinkButton ID="HomeLinkButton" runat="server" Font-Bold="True" 
                    ForeColor="Black">Back to Home</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style44" colspan="5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

