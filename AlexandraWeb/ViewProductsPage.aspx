<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewProductsPage.aspx.cs" Inherits="ViewProductsPage" Title="View Products - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style4
    {
        width: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td align="center" colspan="3" bgcolor="#FFFBD3">
                <b>View Products</b></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:SqlDataSource ID="ViewProductsSQLDataSource" runat="server" 
                    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\AlexandraDB.accdb;Persist Security Info=True" 
                    ProviderName="<%$ ConnectionStrings:AlexandraDBConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [productTable] ORDER BY [productID]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
            <asp:GridView ID="ViewProductsGridView" runat="server" 
                    AutoGenerateColumns="False" CellPadding="2" CellSpacing="2" 
                    DataKeyNames="productID" DataSourceID="ViewProductsSQLDataSource" 
                    GridLines="None">
                <RowStyle BackColor="#FFFBD3" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundField DataField="productID" HeaderText="Product ID" ReadOnly="True" 
                        SortExpression="productID" />
                    <asp:BoundField DataField="productName" HeaderText="Name" 
                        SortExpression="productName" />
                    <asp:BoundField DataField="productType" HeaderText="Type" 
                        SortExpression="productType" />
                    <asp:BoundField DataField="unitPrice" HeaderText="Unit Price" 
                        SortExpression="unitPrice" DataFormatString="{0:c}" />
                </Columns>
                <HeaderStyle BackColor="#FCD636" HorizontalAlign="Center" />
            </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:LinkButton ID="HomeLinkButton" runat="server" Font-Bold="True" 
                    ForeColor="Black">Back to Home</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

