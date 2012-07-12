Option Strict On
'Project: CSci55P2HO
'Programmer: Michael Germino
'Date: February 2012
'Description: Represents all the product attributes that the user has added to the contact list plus the quanity ordered
Imports Microsoft.VisualBasic

Public Class clsMGCustomer

    Sub New()
        ' TODO: Complete member initialization 
    End Sub

    'Declare a "customer class object so we have access to all the cutomer's properties
    Public Property CustomerMG As clsMGCustomer
    Public Property CustomerIDMG As String
    Public Property NameMG As String
    Public Property AddressMG As String
    Public Property CityMG As String
    Public Property StateMG As String
    Public Property ZipCodeMG As String
    Public Property PhoneMG As String
    Public Property EmailMG As String

    Public Sub New(ByVal objMGInCustomer As clsMGCustomer)
        CustomerMG = objMGInCustomer
    End Sub
    Public Function DisplayMG() As String
        'Set up a string to display in the customer list box
        'Get the name and unit price from the product class
        Dim strMGDisplay As String
        strMGDisplay = CustomerMG.NameMG + ": " & CustomerMG.PhoneMG + "; " & CustomerMG.EmailMG
        Return strMGDisplay
    End Function
End Class
