Imports System.Data
Imports System.Threading
Imports System.Windows.Forms

Public Class MainForm
    Inherits Form

    Private ReadOnly LoadButton As New Button()
    Private ReadOnly StatusLabel As New Label()

    Public Sub New()
        LoadButton.Text = "Load data"
        AddHandler LoadButton.Click, AddressOf LoadButton_Click
        Controls.Add(LoadButton)
        Controls.Add(StatusLabel)
    End Sub

    Private Sub LoadButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        StatusLabel.Text = "Loading..."
        Dim table As DataTable = LoadDataSlowly()
        StatusLabel.Text = "Loaded " & table.Rows.Count.ToString() & " rows"
    End Sub

    Private Function LoadDataSlowly() As DataTable
        Thread.Sleep(1500)
        Dim table As New DataTable()
        table.Columns.Add("Name", GetType(String))
        table.Rows.Add("Demo")
        Return table
    End Function
End Class
