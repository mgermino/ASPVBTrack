Option Strict On
'Program CSci Program 7 case - Product Maintenance using a GridView Control
'Date: May 2012
'Programmer: Michael Germino
'Class: Product Maintenance Page
'Description: Allows the user to display and update data for the products table
Partial Class ProductMaintenanceMG
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeletedEventArgs) Handles GridView1.RowDeleted
        If e.Exception IsNot Nothing Then
            lblMGErrorMessage.Text = "A database error has occured. " & e.Exception.Message
            e.ExceptionHandled = True
        ElseIf e.AffectedRows = 0 Then
            lblMGErrorMessage.Text = "Another user may have updated this category. Please try again"
        End If
    End Sub

    Protected Sub GridView1_RowUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView1.RowUpdated
        If e.Exception IsNot Nothing Then
            lblMGErrorMessage.Text = "A database error has occured. " & e.Exception.Message
            e.ExceptionHandled = True
            e.KeepInEditMode = True
        ElseIf e.AffectedRows = 0 Then
            lblMGErrorMessage.Text = "Another user may have updated this category. Please try again"
        End If
    End Sub

    Protected Sub btnMGAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMGAdd.Click
        SqlDataSource1.InsertParameters("ProductCode").DefaultValue = txtMGCode.Text
        SqlDataSource1.InsertParameters("Name").DefaultValue = txtMGName.Text
        SqlDataSource1.InsertParameters("Version").DefaultValue = txtMGVersion.Text
        SqlDataSource1.InsertParameters("ReleaseDate").DefaultValue = txtMGRelease.Text
        Try
            SqlDataSource1.Insert()
            txtMGCode.Text = ""
            txtMGName.Text = ""
            txtMGVersion.Text = ""
            txtMGRelease.Text = ""
        Catch ex As Exception
            lblMGErrorMessage.Text = "A database error has occurred. " & ex.Message
        End Try
    End Sub
End Class
