<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ThankYouMG.aspx.vb" Inherits="ConfirmationMG" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Michael Germino - Sports Pro Survey</title>
    <link href="Styles/Main.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Request.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btnMGSurvey">
    <div id="page">
        <h1>Sports Pro</h1>
        <h2>Sports management software for the sports enthusiast</h2>

        <p>
            <asp:Label ID="lblMGSurveyResults" runat="server"></asp:Label>
        </p>


        <p>
            <asp:Button ID="btnMGSurvey" runat="server" Text="Return to Survey" Width="130px" 
                PostBackUrl="~/SurveyMG.aspx" />
        </p>

    </div>
    </form>
</body>
</html>
