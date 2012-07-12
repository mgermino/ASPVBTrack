<%@ Page Language="VB" MasterPageFile="~/MasterpageMG.master" AutoEventWireup="false" CodeFile="ContactDisplayMG.aspx.vb" Inherits="ContactDisplayMG" %>

<%@ MasterType TypeName="MasterPageMG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 358px;
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
        <br />
        Contact list:<br />
        <br />
        <table class="style2">
            <tr>
                <td class="style3">
                    <asp:ListBox ID="lbxMGSContactList" runat="server" Height="179px" Width="494px">
                    </asp:ListBox>
                </td>
                <td>
                    <asp:Button ID="btnMGRemove" runat="server" Text="Remove Contact" />
                    <br />
                    <br />
                    <asp:Button ID="btnMGEmpty" runat="server" Text="Empty List" />
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
                    <asp:Button ID="btnMGContinue" runat="server" PostBackUrl="~/CustomerDisplayMG.aspx" 
                        Text="Select Additional Customers" Width="179px" />
&nbsp;
                    </td>
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
                    <asp:Label ID="lblMGMessage" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
</asp:Content>