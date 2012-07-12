'Project: CSci55P2HO
'Programmer: Michael Germino
'Date: February 2012
'Description: contact add page - user selects a contact and enters the desired quantity. User has options to add to the existing contact list or look at the contact list.
Option Strict On
Imports System.Data
Partial Class CustomerDisplayMG
    Inherits System.Web.UI.Page
    Private mobjMGSelectedCustomer As clsMGCustomer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'Bind the drop down list if the page is not being posted back to itself
            ddlMGCustomers.DataBind()
        End If
        'Call the GetSelected function to get a Customer object for the selected Customer
        mobjMGSelectedCustomer = Me.GetSelectedCustomerMG
        'Use the Customer object properties to update the label controls
        lblMGAddress.Text = mobjMGSelectedCustomer.AddressMG
        lblMGCity.Text = mobjMGSelectedCustomer.CityMG
        lblMGState.Text = mobjMGSelectedCustomer.StateMG
        lblMGZipCode.Text = mobjMGSelectedCustomer.ZipCodeMG
        lblMGPhone.Text = mobjMGSelectedCustomer.PhoneMG
        lblMGEmail.Text = mobjMGSelectedCustomer.EmailMG



    End Sub
    Private Function GetSelectedCustomerMG() As clsMGCustomer
        'Extracts the data for the selected Customer from the data source
        'it uses the extracted data to create a clsProduc object
        'Declare a dataview variable
        'Extracts all the rows from the data source
        'Need to convert the results of the select method to a data view
        Dim dvMGCustomerTable As DataView = CType(AccessDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
        'use the RowFilter property of the data view to filter the rows so only the selected Customer is returned
        dvMGCustomerTable.RowFilter = "CustomerID = '" & ddlMGCustomers.SelectedValue & "'"
        Dim drvMGCustomerRow As DataRowView = dvMGCustomerTable(0)
        'Declare a new Customer object to hold the selected Customer properties
        Dim objMGCustomerItem As New clsMGCustomer
        objMGCustomerItem.CustomerIDMG = drvMGCustomerRow("CustomerID").ToString
        objMGCustomerItem.NameMG = drvMGCustomerRow("Name").ToString
        objMGCustomerItem.AddressMG = drvMGCustomerRow("Address").ToString
        objMGCustomerItem.CityMG = drvMGCustomerRow("City").ToString
        objMGCustomerItem.StateMG = drvMGCustomerRow("State").ToString
        objMGCustomerItem.ZipCodeMG = drvMGCustomerRow("ZipCode").ToString
        objMGCustomerItem.PhoneMG = drvMGCustomerRow("Phone").ToString
        objMGCustomerItem.EmailMG = drvMGCustomerRow("Email").ToString
        Return objMGCustomerItem
    End Function

    Protected Sub btnMGAdd_Click(ByVal sender As Object, e As System.EventArgs) Handles btnMGAdd.Click
        'Make sure that the page is valid
        If Page.IsValid Then
            'Declare a CustomerList class object and gets the Customer stored in the session state using the GetCustomer function
            Dim objMGList As clsMGCustomerList = clsMGCustomerList.GetCustomerMG


            'Declare a CustomerItem class object and set it the Item property of the contact list item object using the CustomerID of the selected Customer object
            Dim objMGCustomerItem As clsMGCustomer = objMGList(mobjMGSelectedCustomer.CustomerIDMG)
            If objMGCustomerItem Is Nothing Then
                objMGList.AddContactMG(mobjMGSelectedCustomer)


            Else
                objMGList.AddContactMG(mobjMGSelectedCustomer)
            End If
            'open the contact page
            Response.Redirect("ContactDisplayMG.aspx")
        End If
    End Sub
End Class
