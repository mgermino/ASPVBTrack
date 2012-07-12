<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ProductMaintenanceMG.aspx.vb" Inherits="ProductMaintenanceMG" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductCode" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" 
                    ReadOnly="True" SortExpression="ProductCode" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Version" HeaderText="Version" 
                    SortExpression="Version" />
                <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" 
                    SortExpression="ReleaseDate" DataFormatString="{0:d}" HtmlEncode="False" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                    ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TechSupport_DataConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate" 
            InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" 
            ProviderName="<%$ ConnectionStrings:TechSupport_DataConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [ProductCode], [Name], [Version], [ReleaseDate] FROM [Products] ORDER BY [ProductCode]" 
            
            UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate" 
            ConflictDetection="CompareAllValues" 
            OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductCode" />
                <asp:Parameter Name="original_Name" />
                <asp:Parameter Name="original_Version" />
                <asp:Parameter Name="original_ReleaseDate" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductCode" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Version" Type="Decimal" />
                <asp:Parameter Name="ReleaseDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Version" Type="Decimal" />
                <asp:Parameter Name="ReleaseDate" Type="DateTime" />
                <asp:Parameter Name="ProductCode" Type="String" />
                <asp:Parameter Name="original_ProductCode" />
                <asp:Parameter Name="original_Name" />
                <asp:Parameter Name="original_Version" />
                <asp:Parameter Name="original_ReleaseDate" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
            ValidationGroup="insert" />
        <br />
        <asp:Label ID="lblMGErrorMessage" runat="server" EnableViewState="False" 
            ForeColor="Red"></asp:Label>
        <br />
        <br />
        To add a new product, enter the product information and click Add Product<br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    Product Code:</td>
                <td>
                    <asp:TextBox ID="txtMGCode" runat="server" ValidationGroup="insert"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="reqvalMGCode" runat="server" 
                        ErrorMessage="Product code is a required field." 
                        ControlToValidate="txtMGCode" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Name:</td>
                <td>
                    <asp:TextBox ID="txtMGName" runat="server" ValidationGroup="insert" 
                        Width="265px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="reqvalMGName" runat="server" 
                        ErrorMessage="Name is a required field." ControlToValidate="txtMGName" 
                        ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Version:</td>
                <td>
                    <asp:TextBox ID="txtMGVersion" runat="server" ValidationGroup="insert"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="reqvalMGVersion" runat="server" 
                        ErrorMessage="Version is a required field." 
                        ControlToValidate="txtMGVersion" ForeColor="Red" ValidationGroup="insert"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="regexpvalMGVersion" runat="server" 
                ControlToValidate="txtMGVersion" CssClass="validator" Display="Dynamic" 
                ErrorMessage="Version must be a decimal value" 
                ValidationExpression="[0-9]+.[0-9]+" 
                        ValidationGroup="insert" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Release Date:</td>
                <td>
                    <asp:TextBox ID="txtMGRelease" runat="server" ValidationGroup="insert">mm/dd/yy</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="reqvalMGRelease" runat="server" 
                        ErrorMessage="Date is Required." ValidationGroup="insert" 
                        ControlToValidate="txtMGRelease" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="regexpvalMGDate" runat="server" 
                ControlToValidate="txtMGRelease" CssClass="validator" Display="Dynamic" 
                ErrorMessage="Invalid date format." 
                ValidationExpression="^(0[1-9]|1[012])[ /.](0[1-9]|[12][0-9]|3[01])[ /.](0[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]|6[0-9]|7[0-9]|8[0-9]|9[0-9])$" 
                        ValidationGroup="insert" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnMGAdd" runat="server" Text="Add Product" 
            ValidationGroup="insert" Width="135px" />
        <br />
    
    </div>
    </form>
</body>
</html>
