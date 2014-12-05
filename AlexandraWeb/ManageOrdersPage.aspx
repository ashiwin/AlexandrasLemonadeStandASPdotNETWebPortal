<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageOrdersPage.aspx.cs" Inherits="ManageOrdersPage" Title="Manage Orders - Alexandra's Lemonade Stand by Ashiwin" %>

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
                <b>View/Delete Orders</b></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:SqlDataSource ID="ManageOrdersSQLDataSource" runat="server" 
                    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\AlexandraDB.accdb;Persist Security Info=True" 
                    DeleteCommand="DELETE FROM [orderTable] WHERE [orderID] = ?" 
                    InsertCommand="INSERT INTO [orderTable] ([orderID], [userID], [productID], [productQty], [subTotal], [orderDateTime]) VALUES (?, ?, ?, ?, ?, ?)" 
                    ProviderName="<%$ ConnectionStrings:AlexandraDBConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [orderTable] ORDER BY [orderID]" 
                    UpdateCommand="UPDATE [orderTable] SET [userID] = ?, [productID] = ?, [productQty] = ?, [subTotal] = ?, [orderDateTime] = ? WHERE [orderID] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="orderID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userID" Type="Int32" />
                        <asp:Parameter Name="productID" Type="String" />
                        <asp:Parameter Name="productQty" Type="Int32" />
                        <asp:Parameter Name="subTotal" Type="Decimal" />
                        <asp:Parameter Name="orderDateTime" Type="DateTime" />
                        <asp:Parameter Name="orderID" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="orderID" Type="Int32" />
                        <asp:Parameter Name="userID" Type="Int32" />
                        <asp:Parameter Name="productID" Type="String" />
                        <asp:Parameter Name="productQty" Type="Int32" />
                        <asp:Parameter Name="subTotal" Type="Decimal" />
                        <asp:Parameter Name="orderDateTime" Type="DateTime" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
            <asp:GridView ID="ManageOrdersGridView" runat="server" 
                    AutoGenerateColumns="False" CellPadding="2" CellSpacing="2" 
                    DataKeyNames="orderID" DataSourceID="ManageOrdersSQLDataSource" 
                    GridLines="None">
                <RowStyle BackColor="#FFFBD3" HorizontalAlign="Center" />
                <EmptyDataRowStyle Font-Bold="False" />
                <Columns>
                    <asp:BoundField DataField="orderID" HeaderText="Order ID" ReadOnly="True" 
                        SortExpression="orderID" InsertVisible="False" />
                    <asp:BoundField DataField="userID" HeaderText="User ID" 
                        SortExpression="userID" />
                    <asp:BoundField DataField="productID" HeaderText="Product ID" 
                        SortExpression="productID" />
                    <asp:BoundField DataField="productQty" HeaderText="Quantity" 
                        SortExpression="productQty" />
                    <asp:BoundField DataField="subTotal" DataFormatString="{0:c}" 
                        HeaderText="Subtotal" SortExpression="subTotal" />
                    <asp:BoundField DataField="orderDateTime" HeaderText="Order Date/Time" 
                        SortExpression="orderDateTime" />
                    <asp:CommandField ShowDeleteButton="True" ControlStyle-ForeColor="Black" 
                        ControlStyle-Font-Bold="True" HeaderText="Action" >
<ControlStyle ForeColor="Black"></ControlStyle>
                    </asp:CommandField>
                </Columns>
                <HeaderStyle BackColor="#FCD636" HorizontalAlign="Center" />
                <EditRowStyle Font-Bold="False" />
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

