<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Michael Germino - Catherine&#39;s Catering</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 97px;
            width: 482px;
            margin-left: 160px;
        }
        .style3
        {
            height: 97px;
            width: 25px;
        }
        .style4
        {
            width: 25px;
        }
        .style5
        {
            height: 97px;
            width: 112px;
        }
        .style6
        {
            width: 112px;
        }
        .style7
        {
            height: 97px;
            width: 243px;
        }
        .style8
        {
            width: 243px;
        }
        .style9
        {
            width: 482px;
        }
        .style10
        {
            width: 112px;
            height: 28px;
        }
        .style11
        {
            width: 25px;
            height: 28px;
        }
        .style12
        {
            width: 482px;
            height: 28px;
        }
        .style13
        {
            width: 243px;
            height: 28px;
        }
        .style14
        {
            width: 112px;
            height: 41px;
        }
        .style15
        {
            width: 25px;
            height: 41px;
        }
        .style16
        {
            width: 482px;
            height: 41px;
        }
        .style17
        {
            width: 243px;
            height: 41px;
        }
        .style18
        {
            width: 112px;
            height: 35px;
        }
        .style19
        {
            width: 25px;
            height: 35px;
        }
        .style20
        {
            width: 482px;
            height: 35px;
        }
        .style21
        {
            width: 243px;
            height: 35px;
        }
        .style22
        {
            width: 100px;
            height: 90px;
        }
    </style>
</head>
<body>
    <form id="frmMGMain" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5">
                    <img alt="food dish" class="style22" 
                        src="images/food1.jpg" /></td>
                <td class="style3">
                </td>
                <td align="center" class="style2">
                    <asp:Label ID="lblMGTitle" runat="server" Font-Bold="True" 
                        Font-Names="French Script MT" Font-Size="XX-Large" style="text-align: center" 
                        Text="Catherine's Catering"></asp:Label>
                </td>
                <td class="style7">
                    <img align="right" alt="food dish" class="style22" 
                        src="images/food2.jpg" /></td>
            </tr>
            <tr>
                <td class="style10">
                    Customer</td>
                <td class="style11">
                </td>
                <td class="style12">
                    <asp:TextBox ID="txtMGCustomer" runat="server" Width="407px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtMGCustomer" ErrorMessage="Customer Required" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    # of guests</td>
                <td class="style15">
                </td>
                <td class="style16">
                    <asp:TextBox ID="txtMGGuests" runat="server"></asp:TextBox>
                </td>
                <td class="style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtMGGuests" ErrorMessage="Must enter # of guests" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtMGGuests" 
                        ErrorMessage="Enter 50-300" MaximumValue="300" MinimumValue="50" 
                        ForeColor="#FF3300" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    Menu</td>
                <td class="style15">
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlMGMenu" runat="server" AutoPostBack="True" onselectedindexchanged="ddlMGMenu_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;<asp:Label ID="lblMGMealCost" runat="server"></asp:Label>
                </td>
                <td class="style17">
                </td>
            </tr>
            <tr>
                <td class="style14">
                    Bar Options</td>
                <td class="style15">
                </td>
                <td class="style16">
                    <asp:RadioButtonList ID="RadlstMGBar" runat="server" CellPadding="1" 
                        CellSpacing="1" ClientIDMode="AutoID" RepeatDirection="Horizontal" 
                        onselectedindexchanged="RadlstMGBar_SelectedIndexChanged" 
                        AutoPostBack="True">
                       <asp:ListItem>Open Bar</asp:ListItem>
                       <asp:ListItem>Wine</asp:ListItem>
                       <asp:ListItem Selected="True">Ice Tea</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="lblMGBar" runat="server"></asp:Label>
                </td>
                <td class="style17">
                </td>
            </tr>
            <tr>
                <td class="style18">
                </td>
                <td class="style19">
                </td>
                <td class="style20">
                </td>
                <td class="style21">
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Amount Due</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9">
                    <asp:Label ID="lblMGAmountDue" runat="server"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9">
                    <asp:Button ID="btnMGCalc" runat="server" Text="Calculate" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnMGClear" runat="server" Text="Clear" />
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style9">
                    <asp:Label ID="lblMGMessage" runat="server"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
