Option Strict On
'Project: Program 4 Hands On
'Programmer: Michael Germino
'Date: March 2012
'Class: Survey Page
'Description: CustomerSurvey input form

Partial Class Request
    Inherits System.Web.UI.Page
    Private mobjMGCustomerSurvey As clsMGCustomerSurvey
    Protected Sub Page_Load(ByVal sender As Object, e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'Check if there is a session variable
            If Session("CustomerSurvey") IsNot Nothing Then
                mobjMGCustomerSurvey = CType(Session("CustomerSurvey"), clsMGCustomerSurvey)
                Me.DisplayCustomerSurveyMG()
            ElseIf Request.Cookies("UserName") IsNot Nothing Then
                txtMGName.Text = Request.Cookies("UserName").Value
                txtMGEmail.Text = Request.Cookies("Email").Value
            End If
        End If
    End Sub

    Protected Sub btnMGSubmit_Click(ByVal sender As Object, e As System.EventArgs) Handles btnMGSubmit.Click
        'Declare a variable to hold the selected ContactAbout as a string
        Dim strMGContactAbout As String = ""
        'Declare a variable to use as an index to go through the check box list of available ContactAbout
        Dim intMGIndex As Integer
        'Instantiate a CustomerSurvey class object
        Dim objMGCustomerSurvey As New clsMGCustomerSurvey
        'Set the properties of the CustomerSurvey class
        objMGCustomerSurvey.NameMG = txtMGName.Text
        objMGCustomerSurvey.EmailMG = txtMGEmail.Text
        'Use the text property of the selected item from the radio button list
        objMGCustomerSurvey.ReferralMG = rblMGReferral.SelectedItem.Text
        If rdoMGEmail.Checked Then
            objMGCustomerSurvey.ContactbyMG = rdoMGEmail.Text
        ElseIf rdoMGMail.Checked Then
            objMGCustomerSurvey.ContactbyMG = rdoMGMail.Text
        ElseIf rdoMGBoth.Checked Then
            objMGCustomerSurvey.ContactbyMG = rdoMGBoth.Text
        Else
            objMGCustomerSurvey.ContactbyMG = "You will not be contacted"
        End If
        objMGCustomerSurvey.MailingListMG = chkMGMailingList.Checked

        'Loop through the check box list to see if an item was checked
        'If it was check, concatenate the text property to the declared string variable

        For intMGIndex = 0 To cblMGContactAbout.Items.Count - 1
            If cblMGContactAbout.Items(intMGIndex).Selected Then
                strMGContactAbout &= " - " & cblMGContactAbout.Items(intMGIndex).Text
            End If
        Next
        'Check to see if nothing was checked - string variable would not have changed

        If cblMGContactAbout.Items(0).Selected Then
            objMGCustomerSurvey.SpecialOffersMG = "We will contact you about Special Offers"
        Else
            objMGCustomerSurvey.SpecialOffersMG = "We will not contact you about Special Offers"
        End If
        If cblMGContactAbout.Items(1).Selected Then
            objMGCustomerSurvey.NewProductsMG = "We will contact you about New Products"
        Else
            objMGCustomerSurvey.NewProductsMG = "We will not contact you about New Products"
        End If
        If cblMGContactAbout.Items(2).Selected Then
            objMGCustomerSurvey.RelatedProductsMG = "We will contact you about Related Products"
        Else
            objMGCustomerSurvey.RelatedProductsMG = "We will not contact you about Related Products"
        End If
        'Create the session variable

        Session("CustomerSurvey") = objMGCustomerSurvey
        Response.Redirect("ThankYouMG.aspx")


    End Sub

    Protected Sub btnMGClear_Click(ByVal sender As Object, e As System.EventArgs) Handles btnMGClear.Click
        'Declare index for loop
        Dim intMGIndex As Integer
        'clear text boxes and lavel
        txtMGName.Text = ""
        txtMGEmail.Text = ""

        'reset the bed size radio buttons
        rdoMGEmail.Checked = False
        rdoMGMail.Checked = False
        rdoMGBoth.Checked = False
        'reset the referral default
        rblMGReferral.SelectedIndex = -1
        'clear the mailing list check box
        chkMGMailingList.Checked = False
        For intMGIndex = 0 To 2
            cblMGContactAbout.Items(intMGIndex).Selected = False
        Next
    End Sub
    Private Sub DisplayCustomerSurveyMG()


        If mobjMGCustomerSurvey.ReferralMG = "Search Engine" Then
            rblMGReferral.Items(0).Selected = True
        ElseIf mobjMGCustomerSurvey.ReferralMG = "Email" Then
            rblMGReferral.Items(1).Selected = True
        ElseIf mobjMGCustomerSurvey.ReferralMG = "Postal Mail" Then
            rblMGReferral.Items(2).Selected = True
        ElseIf mobjMGCustomerSurvey.ReferralMG = "Word of Mouth" Then
            rblMGReferral.Items(3).Selected = True
        Else
            rblMGReferral.Items(4).Selected = True
        End If
        If mobjMGCustomerSurvey.ContactbyMG = "Email" Then
            rdoMGEmail.Checked = True
        ElseIf mobjMGCustomerSurvey.ContactbyMG = "Postal Mail" Then
            rdoMGMail.Checked = True
        ElseIf mobjMGCustomerSurvey.ContactbyMG = "Both" Then
            rdoMGBoth.Checked = True
        Else
            rdoMGEmail.Checked = False
            rdoMGMail.Checked = False
            rdoMGBoth.Checked = False
        End If
        chkMGMailingList.Checked = mobjMGCustomerSurvey.MailingListMG
        txtMGName.Text = mobjMGCustomerSurvey.NameMG
        txtMGEmail.Text = mobjMGCustomerSurvey.EmailMG

        If mobjMGCustomerSurvey.SpecialOffersMG = "We will contact you about Special Offers" Then
            cblMGContactAbout.Items(0).Selected = True
        End If

        If mobjMGCustomerSurvey.NewProductsMG = "We will contact you about New Products" Then
            cblMGContactAbout.Items(1).Selected = True
        End If

        If mobjMGCustomerSurvey.RelatedProductsMG = "We will contact you about Related Products" Then
            cblMGContactAbout.Items(2).Selected = True
        End If

    End Sub
End Class


