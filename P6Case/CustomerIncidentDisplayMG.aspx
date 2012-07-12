<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerIncidentDisplayMG.aspx.vb" Inherits="CustomerIncidentDisplayMG" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Michael Germino - Customer Incidents</title>
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
            width: 300px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Sports Pro</h1>
        <h2><strong>Sports management software for the sports enthusiast</strong></h2>
        Select a Customer: <asp:DropDownList ID="ddlMGCustomers" runat="server" AutoPostBack="True" 
            DataSourceID="sqldsMGCustomers" DataTextField="Name" 
            DataValueField="CustomerID">
        </asp:DropDownList>
        <br />
        <br />
        <asp:SqlDataSource ID="sqldsMGCustomers" runat="server" 
            ConnectionString="<%$ ConnectionStrings:conMGTechSupport %>" 
            SelectCommand="SELECT [CustomerID], [Name] FROM [Customers] ORDER BY [Name]">
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
            DataSourceID="sqldsMGIncidents" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <table>
                    <tr>
                        <td class="style1">
                            Product/</td>
                        <td  class="style1">
                            Tech name/</td>
                        <td  class="style1">
                            Date Opened</td>
                        <td  class="style1">
                            Date Closed</td>
                    </tr>
                    <tr>
                        <td>
                            Incident</td>
                        <td>
                            Description</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemStyle BackColor="#EFF3FB" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblMGProduct" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td class="style1">
                            <asp:Label ID="lblMGTechName" runat="server" Text='<%# Eval("TechName") %>' />
                        </td>
                        <td class="style1">
                            <asp:Label ID="lblMGDateOpened" runat="server" 
                                Text='<%# Eval("DateOpened", "{0:d}") %>' />
                        </td>
                        <td class="style1">
                            <asp:Label ID="lblMGDateClosed" runat="server" 
                                Text='<%# Eval("DateClosed", "{0:d}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblMGIncident" runat="server" Text='<%# Eval("Title") %>' />
                        </td>
                        <td colspan="3">
                            <asp:Label ID="lblMGDescription" runat="server" 
                                Text='<%# Eval("Description") %>' />
                        </td>
                    </tr>
                </table>
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="sqldsMGIncidents" runat="server" 
            ConnectionString="<%$ ConnectionStrings:conMGTechSupport %>" 
            SelectCommand="SELECT Products.Name, Technicians.Name AS TechName, Incidents.DateOpened, Incidents.DateClosed, Incidents.Title, Incidents.Description FROM Incidents INNER JOIN Technicians ON Incidents.TechID = Technicians.TechID INNER JOIN Products ON Incidents.ProductCode = Products.ProductCode WHERE (Incidents.CustomerID = @CustomerID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlMGCustomers" Name="CustomerID" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />


    </div>
    </form>
</body>
</html>
