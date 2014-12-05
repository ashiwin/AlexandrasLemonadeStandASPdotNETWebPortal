<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageProductsPage.aspx.cs" Inherits="ManageProductsPage" Title="Manage Products - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



    .style4
    {
        width: 100%;
    }
        .style5
        {
            width: 50px;
        }
        .style6
        {
            width: 578px;
        }
        .style7
        {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td align="center" colspan="4" bgcolor="#FFFBD3">
                <b>Add/Edit/Delete Products</b></td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td align="center" class="style7">
                <asp:Label ID="ManageProductsLabel" runat="server" Text="Product List" 
                    BackColor="#FCD636" style="font-weight: 700" Width="250px"></asp:Label>
                <br />
                <asp:ListBox ID="ManageProductsListBox" runat="server" AutoPostBack="True" 
                    DataSourceID="ManageProductsSQLDataSource1" DataTextField="productBasic" 
                    DataValueField="productID" 
                    style="font-family: 'Century Gothic'; font-size: medium" 
                    BackColor="#FFFBD3" Width="250px"></asp:ListBox>
                <br />
                <br />
            </td>
            <td align="center" class="style6">
                <asp:DetailsView ID="ManageProductsDetailsView" runat="server" 
                    AutoGenerateRows="False" DataKeyNames="productID" 
                    DataSourceID="ManageProductsSQLDataSource2" Width="500px" 
                    CellPadding="2" CellSpacing="2" GridLines="None">
                    <CommandRowStyle Font-Bold="True" ForeColor="Black" BackColor="White" />
                    <RowStyle BackColor="#FFFBD3" HorizontalAlign="Center" />
                    <FieldHeaderStyle BackColor="#FCD636" HorizontalAlign="Center" 
                        Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="productID" HeaderText="Product ID" ReadOnly="True" 
                            SortExpression="productID" />
                        <asp:BoundField DataField="productName" HeaderText="Name" 
                            SortExpression="productName" />
                        <asp:BoundField DataField="productType" HeaderText="Type" 
                            SortExpression="productType" />
                        <asp:BoundField DataField="unitPrice" HeaderText="Unit Price" 
                            SortExpression="unitPrice" DataFormatString="{0:c}" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowInsertButton="True" />
                    </Fields>
                    <EditRowStyle Font-Bold="False" />
                </asp:DetailsView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:SqlDataSource ID="ManageProductsSQLDataSource1" runat="server" 
                    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\AlexandraDB.accdb;Persist Security Info=True" 
                    ProviderName="<%$ ConnectionStrings:AlexandraDBConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT [productID], [productID] &amp; &quot; &quot; &amp; [productName] AS productBasic FROM [productTable] ORDER BY [productID]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="ManageProductsSQLDataSource2" runat="server" 
                    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\AlexandraDB.accdb;Persist Security Info=True" 
                    DeleteCommand="DELETE * FROM [productTable] WHERE productID = @productID" 
                    InsertCommand="INSERT INTO [productTable] ([productID], [productName], [productType], [unitPrice]) VALUES (?, ?, ?, ?)" 
                    ProviderName="<%$ ConnectionStrings:AlexandraDBConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [productTable] WHERE ([productID] = @productID) ORDER BY productID"                     
                    UpdateCommand="UPDATE [productTable] SET [productName] = @productName , [productType] = @productType, [unitPrice] = @unitPrice WHERE productID = @productID">
                    <SelectParameters>
                    <asp:ControlParameter ControlID="ManageProductsListBox" Name="productID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:LinkButton ID="HomeLinkButton" runat="server" Font-Bold="True" 
                    ForeColor="Black">Back to Home</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

