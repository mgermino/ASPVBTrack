Option Strict On
'Project: Program 4 Hands On
'Programmer: Michael Germino
'Date: March 2012
'Class: Survey page
'Description: Thank you Page
Partial Class ConfirmationMG
    Inherits System.Web.UI.Page

    Dim MailingListMG As String
    Protected Sub Page_Load(ByVal sender As Object, e As System.EventArgs) Handles Me.Load
        'Declare a CustomerSurvey object
        Dim objMGCustomerSurvey As clsMGCustomerSurvey
        'Store the session variable in the variable
        objMGCustomerSurvey = CType(Session("CustomerSurvey"), clsMGCustomerSurvey)
        'Set the labels using the class properties

        'lblMGName.Text = objMGCustomerSurvey.NameMG
        'lblMGEmail.Text = objMGCustomerSurvey.EmailMG
        If objMGCustomerSurvey.MailingListMG Then
            MailingListMG = "You will be added to the Mailing List"
        Else
            MailingListMG = "You will not be added to the Mailing List"
        End If
        lblMGSurveyResults.Text = objMGCustomerSurvey.NameMG + ", thank you for filling out our survey <br /><br />" + "Your email is " + objMGCustomerSurvey.EmailMG + "<br /><br />" + "You heard about us by " + objMGCustomerSurvey.ReferralMG + "<br /><br />" + MailingListMG + "<br /><br />" + objMGCustomerSurvey.SpecialOffersMG + "<br /><br />" + objMGCustomerSurvey.NewProductsMG + "<br /><br />" + objMGCustomerSurvey.RelatedProductsMG + "<br /><br />" + "Your Contact Method - " + objMGCustomerSurvey.ContactbyMG
    End Sub

End Class
