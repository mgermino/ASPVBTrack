Option Strict On
'Project: CSci55P2Case
'Programmer: Michael Germino
'Date: February 2012
'Description: Represents a list of contacts object (Product attributes plus quantity)
Imports Microsoft.VisualBasic

Public Class clsMGCustomerList
    Private mobjlistMGContacts As List(Of clsMGCustomer)
    Public Sub New()
        mobjlistMGContacts = New List(Of clsMGCustomer)
    End Sub
    Public ReadOnly Property CountMG As Integer
        Get
            Return mobjlistMGContacts.Count
        End Get
    End Property
    Default Public Property ContactMG(ByVal intMGInIndex As Integer) As clsMGCustomer
        Get
            Return mobjlistMGContacts(intMGInIndex)
        End Get
        Set(ByVal value As clsMGCustomer)
            mobjlistMGContacts(intMGInIndex) = value
        End Set
    End Property
    Default Public ReadOnly Property ContactMG(ByVal strMGInID As String) As clsMGCustomer
        Get
            For Each objMGCustomerItem As clsMGCustomer In mobjlistMGContacts
                If objMGCustomerItem.CustomerMG.CustomerIDMG = strMGInID Then
                    Return objMGCustomerItem
                End If
            Next
            Return Nothing
        End Get
    End Property
    Public Shared Function GetCustomerMG() As clsMGCustomerList
        'First checks to see if a session state item named contact exists and creates a new customer object and adds it to the contact Session for the current user if it does not exist
        'returns the contact Session item
        If CType(HttpContext.Current.Session("Contact"), clsMGCustomerList) Is Nothing Then
            HttpContext.Current.Session.Add("contact", New clsMGCustomerList)
        End If
        Return CType(HttpContext.Current.Session("Contact"), clsMGCustomerList)
    End Function
    Public Sub AddContactMG(ByVal objMGInCustomer As clsMGCustomer)
        'Adds a new contact to the contact item list
        Dim objMGCustomerItem As New clsMGCustomer(objMGInCustomer)
        mobjlistMGContacts.Add(objMGCustomerItem)
    End Sub
    Public Sub RemoveAtMG(ByVal intMGIndex As Integer)
        'Removes the contact at the give index from the list of contacts
        mobjlistMGContacts.RemoveAt(intMGIndex)
    End Sub
    Public Sub ClearMG()
        'removes all of the contacts from the list
        mobjlistMGContacts.Clear()
    End Sub
End Class
