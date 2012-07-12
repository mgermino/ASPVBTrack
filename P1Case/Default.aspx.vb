

Option Strict On
'Project: Program 1 Case - Catherine's catering
'Programmer: Michael Germino
'Date: February 2012
'Description: Simple one page web application. User inputs customer name, # of guests, selects menu choice, and selects bar choice. Total amount due and a thank you message appear once the calculate button is clicked, if everything is entered.
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ddlMGMenu.Items.Add("Pasta")
            ddlMGMenu.Items.Add("Chicken")
            ddlMGMenu.Items.Add("Prime Rib")
            ddlMGMenu.SelectedIndex = 0


            Const decMGPastaPrice As Double = 12.95
            Const decMGBarPrice As Double = 0.0


            lblMGMealCost.Text = FormatCurrency(decMGPastaPrice)
            lblMGBar.Text = FormatCurrency(decMGBarPrice)

        End If
    End Sub


    Protected Sub RadlstMGBar_SelectedIndexChanged(ByVal sender As Object, e As System.EventArgs) Handles RadlstMGBar.SelectedIndexChanged
        'A case selection to update the price depending on which bar option they choose
        Select Case RadlstMGBar.SelectedIndex
            Case 0 : lblMGBar.Text = "$25.00"
            Case 1 : lblMGBar.Text = "$8.00"
            Case 2 : lblMGBar.Text = "$0.00"
            Case Else
                lblMGBar.Text = "12.95"
        End Select
    End Sub







    Protected Sub ddlMGMenu_SelectedIndexChanged(ByVal sender As Object, e As System.EventArgs) Handles ddlMGMenu.SelectedIndexChanged
        'A case selection to update the price depending on which menu option they choose
        Select Case ddlMGMenu.SelectedIndex
            Case 0 : lblMGMealCost.Text = "$12.95"
            Case 1 : lblMGMealCost.Text = "$18.95"
            Case 2 : lblMGMealCost.Text = "$25.95"
            Case Else
                lblMGMealCost.Text = "12.95"
        End Select
    End Sub


    Protected Sub btnMGCalc_Click(ByVal sender As Object, e As System.EventArgs) Handles btnMGCalc.Click
        'calculate the order as follows
        'pasta - 12.95 per guest
        'chicken - 18.95 per guest
        'Prime rib - 25.00 per guest
        'open bar - 25.00 per guest
        'wine - 8.00 per guest
        'ice tea - 0.00 per guest
        'Display the total and the thank you message

        Dim decMGMenuPrice As Double
        Dim decMGBarPrice As Double
        Dim decMGGuests As Double


        Dim decMGAmount As Double

        If ddlMGMenu.SelectedIndex = 0 Then
            decMGMenuPrice = 12.95
        ElseIf ddlMGMenu.SelectedIndex = 1 Then
            decMGMenuPrice = 18.95
        Else
            decMGMenuPrice = 25.95
        End If

        If RadlstMGBar.SelectedIndex = 0 Then
            decMGBarPrice = 25.0
        ElseIf RadlstMGBar.SelectedIndex = 1 Then
            decMGBarPrice = 8.0
        Else
            decMGBarPrice = 0.0
        End If


        decMGGuests = Convert.ToDecimal(txtMGGuests.Text)
        decMGAmount = (decMGMenuPrice * decMGGuests) + (decMGBarPrice * decMGGuests)
        'Format the total amount label to display currency
        lblMGAmountDue.Text = FormatCurrency(decMGAmount)
        'Format the thank you message
        lblMGMessage.Text = "Thank you " & txtMGCustomer.Text & " for your order"

    End Sub

    Protected Sub btnMGClear_Click(ByVal sender As Object, e As System.EventArgs) Handles btnMGClear.Click
        'Clear the text boxes, labels and reset the drop down list to select first item and reset the radio list to select 3rd item
        ddlMGMenu.SelectedIndex = 0
        RadlstMGBar.SelectedIndex = 2
        txtMGCustomer.Text = ""
        txtMGGuests.Text = ""
        lblMGAmountDue.Text = ""
        lblMGMessage.Text = ""
        lblMGMealCost.Text = "$12.95"
        lblMGBar.Text = "$0.00"
    End Sub
End Class
