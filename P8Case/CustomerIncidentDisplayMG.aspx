<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerIncidentDisplayMG.aspx.vb" Inherits="CustomerIncidentDisplayMG" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Michael Germino - Technicians</title>
    <style type="text/css">
       h1
{
    font-size: 40pt;
    font-family: Arial, Helvetica, sans-serif;
    text-decoration: underline;
    font-weight: 700;
    color: #0000FF;
    margin-top: 0;
    margin-bottom: 5px;
}
h2
{
    font-size: 15pt;
    font-family: 'Times New Roman', Times, serif;
    font-weight: normal;
    color: #FF3300;
    margin-top: 0;
    margin-bottom: 20px;
}

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 42px;
        }
        .style3
        {
            width: 207px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Sports Pro</h1>
        <h2><strong>Sports management software for the sports enthusiast</strong></h2>
        Select a Technician: 
        <asp:DropDownList ID="ddlMGTechnician" runat="server" AutoPostBack="True" 
            DataSourceID="sqldatsrcdropdown" DataTextField="Name" DataValueField="TechID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sqldatsrcdropdown" runat="server" 
            ConnectionString="<%$ ConnectionStrings:conMGTechSupport %>" 
            SelectCommand="SELECT [TechID], [Name] FROM [Technicians] ORDER BY [Name]">
        </asp:SqlDataSource>
        <br />
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:DetailsView ID="dtlvwMGTechs" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" DataKeyNames="TechID" DataSourceID="sqldatsrcformview" 
                        ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:TemplateField HeaderText="TechID" InsertVisible="False" 
                                SortExpression="TechID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TechID") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TechID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtMGName" runat="server" Text='<%# Bind("Name") %>' 
                                        Width="110px"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtMGName" ErrorMessage="Name is required" 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtMGEmail" runat="server" Text='<%# Bind("Email") %>' 
                                        Width="110px"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtMGEmail" ErrorMessage="Email is required" 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtMGPhone" runat="server" Text='<%# Bind("Phone") %>' 
                                        Width="110px"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtMGPhone" ErrorMessage="Phone number is required" 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update" />
                                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                        CommandName="Edit" Text="Edit" />
                                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                        CommandName="New" Text="New" />
                                    &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" 
                                        CommandName="Delete" Text="Delete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Label ID="lblMGErrorMessage" runat="server" EnableViewState="False"></asp:Label>
        <br />
        <asp:SqlDataSource ID="sqldatsrcformview" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:conMGTechSupport %>" 
            DeleteCommand="DELETE FROM [Technicians] WHERE [TechID] = @original_TechID AND [Name] = @original_Name AND [Email] = @original_Email AND [Phone] = @original_Phone" 
            InsertCommand="INSERT INTO [Technicians] ([Name], [Email], [Phone]) VALUES (@Name, @Email, @Phone)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [TechID], [Name], [Email], [Phone] FROM [Technicians] WHERE ([TechID] = @TechID)" 
            UpdateCommand="UPDATE [Technicians] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone WHERE [TechID] = @original_TechID AND [Name] = @original_Name AND [Email] = @original_Email and [Phone] = @original_phone">
            <DeleteParameters>
                <asp:Parameter Name="original_TechID" />
                <asp:Parameter Name="original_Name" />
                <asp:Parameter Name="original_Email" />
                <asp:Parameter Name="original_Phone" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="Email" />
                <asp:Parameter Name="Phone" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlMGTechnician" Name="TechID" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="Email" />
                <asp:Parameter Name="Phone" />
                <asp:Parameter Name="original_TechID" />
                <asp:Parameter Name="original_Name" />
                <asp:Parameter Name="original_Email" />
                <asp:Parameter Name="original_phone" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />


    </div>
    </form>
</body>
</html>
