Option Strict On
'Project: Program 8 Case
'Programmer: Michael Germino
'Date: April 2012
'Class: SQL Formview
Partial Class CustomerIncidentDisplayMG
    Inherits System.Web.UI.Page
    Protected Sub dtlvwMGTechs_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles dtlvwMGTechs.ItemDeleted

        If e.Exception IsNot Nothing Then
            lblMGErrorMEssage.Text = "A database error has occurred. " & e.Exception.Message
            e.ExceptionHandled = True
        ElseIf e.AffectedRows = 0 Then
            lblMGErrorMEssage.Text = "Another user may have updated that product. <br /> Please try again"
        Else
            ddlMGTechnician.DataBind()
        End If
    End Sub

    Protected Sub dtlvwMGTechs_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles dtlvwMGTechs.ItemInserted
        If e.Exception IsNot Nothing Then
            lblMGErrorMEssage.Text = "A database error has occurred. " & e.Exception.Message
            e.ExceptionHandled = True
        Else
            ddlMGTechnician.DataBind()
        End If
    End Sub

    Protected Sub dtlvwMGTechs_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles dtlvwMGTechs.ItemUpdated
        '
        '
        '
        If e.Exception IsNot Nothing Then
            lblMGErrorMEssage.Text = "A database error has occurred. " & e.Exception.Message
            e.ExceptionHandled = True
        ElseIf e.AffectedRows = 0 Then
            lblMGErrorMEssage.Text = "Another user may have updated that product. <br /> Please try again"
        Else
            ddlMGTechnician.DataBind()
        End If
    End Sub
    Protected Sub btnMGEdit_Click(sender As Object, e As System.EventArgs)

    End Sub
End Class
