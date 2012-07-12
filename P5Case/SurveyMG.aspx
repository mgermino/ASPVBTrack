<%@ Page Language="VB" MasterPageFile="~/MasterPageMG.master" AutoEventWireup="false" CodeFile="SurveyMG.aspx.vb" Inherits="Request" ViewStateMode = "Disabled" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="Styles/Main.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Request.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1 {
            width: 100%;
            margin-bottom: 45px;
        }
        .style2
        {
            width: 256px;
        }
        .style5
        {

            height: 76px;
        }
        .style6
        {
            height: 76px;
        }
        .style7
        {
            width: 256px;
            height: 51px;
        }
        .style8
        {
            height: 51px;
        }
    .style10
    {
        width: 281px;
    }
    .style11
    {
        width: 281px;
        height: 51px;
        background-color: #FFFFFF;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMGMain" Runat="Server">


        <p class="contact">Name:</p>
        <p>
            <asp:TextBox ID="txtMGName" runat="server" Width="320px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqvalMGName" runat="server" 
                ControlToValidate="txtMGName" CssClass="validator" Display="Dynamic" 
                ErrorMessage="Name is required">*</asp:RequiredFieldValidator>
        </p>
        <p class="contact">Email:</p>
        <p>
            <asp:TextBox ID="txtMGEmail" runat="server" Width="320px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqvalMGEmail" runat="server" 
                ControlToValidate="txtMGEmail" CssClass="validator" Display="Dynamic" 
                ErrorMessage="Email is required">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="regexpvalMGEmail" runat="server" 
                ControlToValidate="txtMGEmail" CssClass="validator" Display="Dynamic" 
                ErrorMessage="Enter a valid email address" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </p>
                <table class="style1">
                    <tr>
                        <td class="style10">
                            How did you hear about us? <asp:RequiredFieldValidator 
                            ID="ReqvalMGReferral" runat="server" 
                            ErrorMessage="How did you hear about us is required" 
                            ControlToValidate="rblMGReferral" CssClass="validator" Display="Dynamic">*</asp:RequiredFieldValidator>
                             &nbsp;<asp:RadioButtonList ID="rblMGReferral" runat="server" 
                             RepeatColumns="3" RepeatDirection="Horizontal" style="margin-bottom: 24px" 
                                Width="292px">
                             <asp:ListItem Value="1">Search Engine</asp:ListItem>
                             <asp:ListItem Value="2">Email</asp:ListItem>
                             <asp:ListItem Value="3">Postal Mail</asp:ListItem>
                             <asp:ListItem Value="4">Word of Mouth</asp:ListItem>
                             <asp:ListItem Value="5">Other</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:CheckBox ID="chkMGMailingList" runat="server" Text="Add me to your mailing list" /></td>
                        <td class="style8">
                            </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Contact me about: <br />
                            <asp:CheckBoxList ID="cblMGContactAbout" runat="server" RepeatColumns="4" 
                                CellSpacing="4" RepeatDirection="Vertical">
                             <asp:ListItem Value="1">Special Offers</asp:ListItem>
                             <asp:ListItem Value="2">New Product</asp:ListItem>
                             <asp:ListItem Value="3">Related Products</asp:ListItem>
                             </asp:CheckBoxList>
                        </td>
                        <td class="style6">
                            <p>Contact me by:<br />
                            <asp:RadioButton ID="rdoMGEmail" runat="server" Checked="False" GroupName="Contact" Text="Email" /><br />
                            <asp:RadioButton ID="rdoMGMail" runat="server" Checked="False" GroupName="Contact" Text="Postal Mail" /><br />
                            <asp:RadioButton ID="rdoMGBoth" runat="server" Checked="False" GroupName="Contact" Text="Both" />
                        </td>
                    </tr>
                </table>


        <p id="buttons">
            <asp:Button ID="btnMGSubmit" runat="server" Text="Submit Survey" 
                Width="110px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnMGClear" runat="server" Text="Clear" Width="110px" 
                CausesValidation="False" />
        </p>
        <p id="message">
            &nbsp;</p>
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            CssClass="validator" HeaderText="Please correct the following errors" />
</asp:Content>
