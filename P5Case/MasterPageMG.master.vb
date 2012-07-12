Option Strict On
'Programmer: Michael Germino
'Date: March 2012
'Class: Master Page
Partial Class MasterPageMG
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblMGMessage.Text = "To contact us, call us at 800-555-0400 or email us at <a href=mailto:Sportspro@sportsprosoftware.com>Sportspro@sportsprosoftware.com</a>"
    End Sub
End Class

