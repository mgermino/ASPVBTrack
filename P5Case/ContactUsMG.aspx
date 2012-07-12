<%@ Page Language="VB" MasterPageFile="~/MasterPageMG.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Main.css" rel="Stylesheet" type="text/css" />
        <style type="text/css">
        .style1
        {
            font-family: "Times New Roman", Times, serif;
            font: normal normal bold x-large serif;
            margin: 0;
            margin-top: 0;
            padding: 0;
            padding-bottom: 0;
            padding-left: 0;
            padding-right: 0;
            padding-top: 0;
            color: #FF0000;
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="cphMGMain" Runat="Server">


<div id="page">
<h2>How to contact us</h2>

<p>If you ever have any questions or comments about our products, please be sure to contact us in whateverw ay is most convenient for you.</p>
    <p class="text">Phone:&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="1-800-555-0400" 
            CssClass="label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Weekdays, 8 to 5 Pacific Time" 
            CssClass="label"></asp:Label>
    </p>
    <p class="text">Phone:&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="" CssClass="label"><a href="mailto:sports@sportsprosoftware.com">sports@sportsprosoftware.com</a></asp:Label>
        <br />

        </p>
    <p class="text">Fax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="" CssClass="label">1-559-555-2732</asp:Label>
    </p>

    

    <p class="text">Address:&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Label" CssClass="label">SportsPro Software, Inc.<br />1500 N. Main Street<br />Fresno, California 93710</asp:Label></p>

</asp:Content>
