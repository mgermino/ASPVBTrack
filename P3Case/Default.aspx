<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Main.css" rel="Stylesheet" type="text/css" />
</head>
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

<body>
    <form id="form1" runat="server">

    <h1>SportsPro<br />
        <span class="style1">Sports management software for the sports enthusiast</span></h1>


<div id="page">
<h2>How to contact us</h2>

<p>If you ever have any questions or comments about our products, please be sure to contact us in whateverw ay is most convenient for you.</p>
    <p class="text">Phone:&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="1-800-555-0400" 
            CssClass="label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMGPhone" runat="server" Text="Weekdays, 8 to 5 Pacific Time" 
            CssClass="label"></asp:Label>
    </p>
    <p class="text">Email:&nbsp;&nbsp;&nbsp;<asp:Label ID="lblMGEmail" runat="server" 
            Text="&lt;a href=&quot;mailto:sports@sportsprosoftware.com&quot;&gt;sports@sportsprosoftware.com&lt;/a&gt;" 
            CssClass="label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p class="text">Fax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMGFax" runat="server" Text="1-559-555-2732" CssClass="label"></asp:Label>
    </p>

    

    <p class="text">Address:&nbsp;
    <asp:Label ID="lblMGAddress" runat="server" 
            Text="SportsPro Software, Inc.&lt;br /&gt;1500 N. Main Street&lt;br /&gt;Fresno, California 93710" 
            CssClass="label"></asp:Label></p>



    </div>


    </form>
</body>
</html>
