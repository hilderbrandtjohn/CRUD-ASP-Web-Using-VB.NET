Imports System.Data.SqlClient

Public Class _Default
    Inherits Page

    Dim connect As New SqlConnection("Data Source=DESKTOP-KO3PIEN\MSSQLSERVER1;Initial Catalog=CRUDTutorial_DB;Persist Security Info=True;User ID=sa;Password=0723368444")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ListProduct()
    End Sub

    Protected Sub insertbutton_Click(sender As Object, e As EventArgs)
        Dim connect As New SqlConnection("Data Source=DESKTOP-KO3PIEN\MSSQLSERVER1;Initial Catalog=CRUDTutorial_DB;Persist Security Info=True;User ID=sa;Password=0723368444")
        Dim productid As Integer = txtProductId.Text
        Dim itemname As String = txtItemName.Text
        Dim specification As String = txtSpecification.Text
        Dim unit As String = DropUnit.SelectedValue
        Dim color As String = RadioColor.SelectedValue
        Dim insertdate As DateTime = txtdate.Text
        Dim opening As Double = txtOpeningqtty.Text
        Dim status As String = ""
        If Checkregular.SelectedValue = "Regular" Then
            status = "Regular"
        Else
            status = "Irregular"
        End If
        connect.Open()
        Dim command As New SqlCommand("insert into ProductInfo_Tab values('" & productid & "','" & itemname & "','" & specification & "','" & unit & "','" & color & "','" & insertdate & "', '" & opening & "','" & status & "')", connect)
        command.ExecuteNonQuery()
        MsgBox("Succesfully Inserted", MsgBoxStyle.Information, "Message")
        connect.Close()
        ListProduct()
    End Sub

    Private Sub ListProduct()
        Dim command As New SqlCommand("select * from ProductInfo_Tab", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        Gridview1.DataSource = dt
        Gridview1.DataBind()

    End Sub

    Protected Sub ButtonUpdate_Click(sender As Object, e As EventArgs)
        Dim connect As New SqlConnection("Data Source=DESKTOP-KO3PIEN\MSSQLSERVER1;Initial Catalog=CRUDTutorial_DB;Persist Security Info=True;User ID=sa;Password=0723368444")
        Dim productid As Integer = txtProductId.Text
        Dim itemname As String = txtItemName.Text
        Dim specification As String = txtSpecification.Text
        Dim unit As String = DropUnit.SelectedValue
        Dim color As String = RadioColor.SelectedValue
        Dim insertdate As DateTime = txtdate.Text
        Dim opening As Double = txtOpeningqtty.Text
        Dim status As String = ""
        If Checkregular.SelectedValue = "Regular" Then
            status = "Regular"
        Else
            status = "Irregular"
        End If
        connect.Open()
        Dim command As New SqlCommand("update ProductInfo_Tab set Itemname='" & itemname & "',Specification='" & specification & "',Unit='" & unit & "',Color='" & color & "',InsertDate='" & insertdate & "',Opening= '" & opening & "',Status='" & status & "' where ProductID='" & productid & "' ", connect)
        command.ExecuteNonQuery()
        MsgBox("Succesfuly Updated", MsgBoxStyle.Information, "Message")
        connect.Close()
        ListProduct()

    End Sub

    Protected Sub ButtonDelete_Click(sender As Object, e As EventArgs)
        Dim connect As New SqlConnection("Data Source=DESKTOP-KO3PIEN\MSSQLSERVER1;Initial Catalog=CRUDTutorial_DB;Persist Security Info=True;User ID=sa;Password=0723368444")
        Dim productid As Integer = txtProductId.Text

        connect.Open()
        Dim command As New SqlCommand("delete ProductInfo_Tab where ProductID='" & productid & "'", connect)
        command.ExecuteNonQuery()
        MsgBox("Succesfully Deleted", MsgBoxStyle.Information, "Message")
        connect.Close()
        ListProduct()
    End Sub

    Protected Sub ButtonSearch_Click(sender As Object, e As EventArgs)
        Dim productid As Integer = txtProductId.Text
        Dim command As New SqlCommand("select * from ProductInfo_Tab where ProductID='" & productid & "'", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        Gridview1.DataSource = dt
        Gridview1.DataBind()
    End Sub
End Class