Option Strict On
'Project: CSci55P2HO
'Programmer: Michael Germino
'Date: February 2012
'Description: Represents a list of CartItem object (Product attributes plus quantity)
Imports Microsoft.VisualBasic

Public Class clsMGCustomerList
    Private mobjlistMGCartItems As List(Of clsMGCustomer)
    Public Sub New()
        mobjlistMGCartItems = New List(Of clsMGCustomer)
    End Sub
    Public ReadOnly Property CountMG As Integer
        Get
            Return mobjlistMGCartItems.Count
        End Get
    End Property
    Default Public Property ContactMG(ByVal intMGInIndex As Integer) As clsMGCustomer
        Get
            Return mobjlistMGCartItems(intMGInIndex)
        End Get
        Set(ByVal value As clsMGCustomer)
            mobjlistMGCartItems(intMGInIndex) = value
        End Set
    End Property
    Default Public ReadOnly Property ContactMG(ByVal strMGInID As String) As clsMGCustomer
        Get
            For Each objMGCustomerItem As clsMGCustomer In mobjlistMGCartItems
                If objMGCustomerItem.CustomerMG.CustomerIDMG = strMGInID Then
                    Return objMGCustomerItem
                End If
            Next
            Return Nothing
        End Get
    End Property
    Public Shared Function GetCustomerMG() As clsMGCustomerList
        'First checks to see if a session state item named cart exists and creates a new cartitemlist object and adds it to the Cart Session for the current user if it does not exist
        'returns the Cart Session item
        If CType(HttpContext.Current.Session("Contact"), clsMGCustomerList) Is Nothing Then
            HttpContext.Current.Session.Add("contact", New clsMGCustomerList)
        End If
        Return CType(HttpContext.Current.Session("Contact"), clsMGCustomerList)
    End Function
    Public Sub AddContactMG(ByVal objMGInCustomer As clsMGCustomer)
        'Adds a new cart item to the cart item list
        Dim objMGCustomerItem As New clsMGCustomer(objMGInCustomer)
        mobjlistMGCartItems.Add(objMGCustomerItem)
    End Sub
    Public Sub RemoveAtMG(ByVal intMGIndex As Integer)
        'Removes the cart item at the give index from the list of cart items
        mobjlistMGCartItems.RemoveAt(intMGIndex)
    End Sub
    Public Sub ClearMG()
        'removes all of the cart items from the list
        mobjlistMGCartItems.Clear()
    End Sub
End Class
