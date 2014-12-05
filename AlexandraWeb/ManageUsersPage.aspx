<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageUsersPage.aspx.cs" Inherits="ManageUsersPage" Title="Manage Users - Alexandra's Lemonade Stand by Ashiwin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style4
    {
        width: 100%;
    }
        .style5
        {
        }
        .style6
        {
            width: 576px;
        }
        .style7
        {
            width: 300px;
        }
        .style8
        {
            width: 50px;
            height: 299px;
        }
        .style9
        {
            width: 300px;
            height: 299px;
        }
        .style10
        {
            width: 576px;
            height: 299px;
        }
        .style11
        {
            height: 299px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td align="center" colspan="4" bgcolor="#FFFBD3">
                <b>Add/Edit/Delete Users</b></td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td align="center" class="style9">
                <asp:Label ID="ManageUsersLabel" runat="server" Text="User List" 
                    BackColor="#FCD636" style="font-weight: 700" Width="200px"></asp:Label>
                <br />
                <asp:ListBox ID="ManageUsersListBox" runat="server" AutoPostBack="True" 
                    DataSourceID="ManageUsersSQLDataSource1" DataTextField="userBasic" 
                    DataValueField="userID" 
                    style="font-family: 'Century Gothic'; font-size: medium" 
                    BackColor="#FFFBD3" Rows="10" Width="200px"></asp:ListBox>
                <br />
                <br />
            </td>
            <td align="center" class="style10">
                <asp:DetailsView ID="ManageUsersDetailsView" runat="server" 
                    AutoGenerateRows="False" DataKeyNames="userID" 
                    DataSourceID="ManageUsersSQLDataSource2" Width="500px" 
                    CellPadding="2" CellSpacing="2" GridLines="None">
                    <CommandRowStyle Font-Bold="True" ForeColor="Black" BackColor="White" />
                    <RowStyle BackColor="#FFFBD3" HorizontalAlign="Center" />
                    <FieldHeaderStyle BackColor="#FCD636" HorizontalAlign="Center" 
                        Font-Bold="True" />
                    <PagerStyle Font-Bold="False" />
                    <Fields>
                        <asp:BoundField DataField="userID" HeaderText="User ID" 
                            SortExpression="userID" ReadOnly="True" />
                        <asp:BoundField DataField="userPassword" HeaderText="Password" 
                            SortExpression="userPassword" />
                        <asp:BoundField DataField="userName" HeaderText="Name" 
                            SortExpression="userName" />
                        <asp:TemplateField HeaderText="Gender">
                            <EditItemTemplate>
                                    <asp:DropDownList ID="genderDropDownList"
                                         runat="server"
                                         DataTextField = "gender"
                                         DataValueField = "gender"
                                         SelectedValue='<%# Bind("gender") %>' >
                                         <asp:ListItem>M</asp:ListItem>
                                         <asp:ListItem>F</asp:ListItem>
                                   </asp:DropDownList>
                               </EditItemTemplate>
                               <ItemTemplate>
                                     <asp:Label Runat="server"
                                         Text='<%# Bind("gender") %>' ID="genderLabel">
                                     </asp:Label>
                              </ItemTemplate>
                            </asp:TemplateField>
                        <asp:BoundField DataField="telephone" HeaderText="Telephone" 
                            SortExpression="telephone" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="regDateTime" HeaderText="Registration Date/Time" 
                            SortExpression="regDateTime" />
                        <asp:TemplateField HeaderText="User Type">
                            <EditItemTemplate>
                                    <asp:DropDownList ID="userTypeDropDownList"
                                         runat="server"
                                         DataTextField = "userType"
                                         DataValueField = "userType"
                                         SelectedValue='<%# Bind("userType") %>' >
                                         <asp:ListItem>Manager</asp:ListItem>
                                         <asp:ListItem>Admin Staff</asp:ListItem>
                                         <asp:ListItem>Staff</asp:ListItem>
                                         <asp:ListItem>Customer</asp:ListItem>		
                                   </asp:DropDownList>
                               </EditItemTemplate>
                               <ItemTemplate>
                                     <asp:Label Runat="server"
                                         Text='<%# Bind("userType") %>' ID="userTypeLabel">
                                     </asp:Label>
                              </ItemTemplate>
                            </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowInsertButton="True" />
                    </Fields>
                    <EditRowStyle Font-Bold="False" />
                </asp:DetailsView>
            </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td align="center" class="style5" colspan="4">
                <asp:SqlDataSource ID="ManageUsersSQLDataSource1" runat="server" 
                    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\AlexandraDB.accdb;Persist Security Info=True" 
                    ProviderName="<%$ ConnectionStrings:AlexandraDBConnectionString.ProviderName %>" 
                    
                    
                    
                    SelectCommand="SELECT [userID], [userID] &amp; &quot; &quot; &amp; [userName] AS userBasic FROM [userTable] ORDER BY userID">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="ManageUsersSQLDataSource2" runat="server" 
                    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\AlexandraDB.accdb;Persist Security Info=True" 
                    DeleteCommand="DELETE * FROM [userTable] WHERE userID= @userID" 
                    InsertCommand="INSERT INTO [userTable] ([userID], [userPassword], [userName], [gender], [telephone], [email], [regDateTime], [userType]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
                    ProviderName="<%$ ConnectionStrings:AlexandraDBConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [userTable] WHERE ([userID] = @userID) ORDER BY userID" 
                    UpdateCommand="UPDATE [userTable] SET [userPassword] = @userPassword , [userName] = @userName, [gender] = @gender, [telephone] = @telephone, [email] = @email, [regDateTime] = @regDateTime, [userType] = @userType WHERE userID = @userID">
                    <SelectParameters>
                    <asp:ControlParameter ControlID="ManageUsersListBox" Name="userID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="userID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userPassword" Type="String" />
                        <asp:Parameter Name="userName" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="telephone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="regDateTime" Type="DateTime" />
                        <asp:Parameter Name="userType" Type="String" />
                        <asp:Parameter Name="userID" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userID" Type="Int32" />
                        <asp:Parameter Name="userPassword" Type="String" />
                        <asp:Parameter Name="userName" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="telephone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="regDateTime" Type="DateTime" />
                        <asp:Parameter Name="userType" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:LinkButton ID="HomeLinkButton" runat="server" Font-Bold="True" 
                    ForeColor="Black">Back to Home</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

