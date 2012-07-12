
<%@ Page Language="VB" MasterPageFile="~/MasterPageMG.master" AutoEventWireup="false" CodeFile="CustomerDisplayMG.aspx.vb" Inherits="CustomerDisplayMG" %>

<%@ MasterType TypeName="MasterPageMG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 147px;
        }
        .style4
        {
            font-family: 60px;
            font-size: 60px;
            color: #0066FF;
        }
        .style5
        {
            font-family: 60px;
            font-size: 30px;
            color: #FF3300;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMGMain" Runat="Server">
        <table class="style2">
            <tr>
                <td class="style3">
                    Select a customer
                </td>
                <td>
                    <asp:DropDownList ID="ddlMGCustomers" runat="server" AutoPostBack="True" 
                        DataSourceID="AccessDataSource1" DataTextField="Name" 
                        DataValueField="CustomerID" style="margin-bottom: 0px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Address</td>
                <td>
                    <asp:Label ID="lblMGAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblMGCity" runat="server"></asp:Label>
                    ,
                    <asp:Label ID="lblMGState" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblMGZipCode" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Phone</td>
                <td>
                    <asp:Label ID="lblMGPhone" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Email</td>
                <td>
                    <asp:Label ID="lblMGEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
&nbsp;</td>
                <td>
                    <asp:Button ID="btnMGAdd" runat="server" Text="Add to Contact List" Width="123px" />
&nbsp;&nbsp; <asp:Button ID="btnMGGoTo" runat="server" Text="Display Contact List" Width="134px" 
                        PostBackUrl="~/ContactDisplayMG.aspx" CausesValidation="False" />
                    <br />
                    <asp:Label ID="lblMGMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/TechSupport.mdb" 
            
            SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customers] ORDER BY [Name]">
        </asp:AccessDataSource>
    
</asp:Content>