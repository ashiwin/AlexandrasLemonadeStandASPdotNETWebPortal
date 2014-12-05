<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUsersPage.aspx.cs" Inherits="ViewUsersPage" Title="View Users - Alexandra's Lemonade Stand by Ashiwin" %>

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
                <b>View Users</b></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:SqlDataSource ID="ViewUsersSQLDataSource" runat="server" 
                    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\AlexandraDB.accdb;Persist Security Info=True" 
                    ProviderName="<%$ ConnectionStrings:AlexandraDBConnectionString.ProviderName %>" 
                    
                    SelectCommand="SELECT [userID], [userName], [telephone], [gender], [email], [regDateTime], [userType] FROM [userTable] ORDER BY [userID]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:GridView ID="ViewUsersGridView" runat="server" 
                    AutoGenerateColumns="False" CellPadding="2" CellSpacing="2" 
                    DataKeyNames="userID" DataSourceID="ViewUsersSQLDataSource" 
                    GridLines="None">
                    <RowStyle BackColor="#FFFBD3" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundField DataField="userID" HeaderText="User ID" ReadOnly="True" 
                        SortExpression="userID" />
                        <asp:BoundField DataField="userName" HeaderText="Name" 
                        SortExpression="userName" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" 
                        SortExpression="gender" />
                        <asp:BoundField DataField="telephone" HeaderText="Telephone" 
                        SortExpression="telephone" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="regDateTime" HeaderText="Registration Date/Time" 
                            SortExpression="regDateTime" />
                        <asp:BoundField DataField="userType" HeaderText="Type" 
                            SortExpression="userType" />
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

