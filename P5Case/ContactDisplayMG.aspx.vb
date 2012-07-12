Option Strict On
'Project: CSci55P2HO
'Programmer: Michael Germino
'Date: February 2012
'Description: contact list Page - displays the accumulated contacts selected by user. User can remove items and clear the contact list.

Partial Class ContactDisplayMG
    Inherits System.Web.UI.Page
    'Declares a variable to hold the ContactList
    Private mobjMGContactList As clsMGCustomerList

    Protected Sub Page_Load(ByVal sender As Object, e As System.EventArgs) Handles Me.Load
        mobjMGContactList = clsMGCustomerList.GetCustomerMG
        If Not IsPostBack Then
            'If this is the first time that the page is posted, call the ContactDisplay procedure
            Me.ContactDisplayMG()
        End If
    End Sub
    Private Sub ContactDisplayMG()
        'Clear the list box
        lbxMGSContactList.Items.Clear()
        'Declare a CustomerItem object to hold each CustomerItem object in the Session state ContactList object
        Dim objMGCustomerItem As clsMGCustomer
        'Get each customeritem object in the CustomerList
        For intMGIndex = 0 To mobjMGContactList.CountMG - 1
            objMGCustomerItem = mobjMGContactList(intMGIndex)
            'Use the DisplayMG method to format the string for the contact page list box
            lbxMGSContactList.Items.Add(objMGCustomerItem.DisplayMG)
        Next
    End Sub
    Protected Sub btnMGRemove_Click(ByVal sender As Object, e As System.EventArgs) Handles btnMGRemove.Click
        'Make sure that the list has at least one item
        If mobjMGContactList.CountMG > 0 Then
            If lbxMGSContactList.SelectedIndex > -1 Then
                'Remove item only if an item is selected
                mobjMGContactList.RemoveAtMG(lbxMGSContactList.SelectedIndex)
                Me.ContactDisplayMG()
                lblMGMessage.Text = ""
            Else
                'Display message if nothing has been selected
                lblMGMessage.Text = "You must select a contact you want to remove."
            End If
        End If
    End Sub

    Protected Sub btnMGEmpty_Click(ByVal sender As Object, e As System.EventArgs) Handles btnMGEmpty.Click
        'Check that there are items in the list
        If mobjMGContactList.CountMG > 0 Then
            mobjMGContactList.ClearMG()
            lbxMGSContactList.Items.Clear()
            lblMGMessage.Text = ""
        End If
    End Sub

End Class
