Public Class Form1
    Dim bufer As String
    Dim numBuf As Integer
    Dim SrcBuffer As String
    Dim bufArray(9999) As String
    Dim salt As Integer

    Sub FlushBufer()
        bufer = ""
        salt = 0
        numBuf = 0
        For i = 0 To UBound(bufArray)
            bufArray(i) = ""
        Next
    End Sub
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        SrcBuffer = txt.Text
        salt = NumericUpDown1.Value

        For i = 0 To Len(SrcBuffer) - 1
            txt.SelectionStart = i
            txt.SelectionLength = 1
            bufArray(i) = txt.SelectedText
            numBuf = (Asc(bufArray(i)) + salt)
            On Error GoTo errka
            bufArray(i) = Chr(numBuf)
            bufer = bufer + bufArray(i)
        Next

        txt.Text = bufer
        FlushBufer()
        Exit Sub
errka:
        MsgBox("Ошибка шифрования! Выберите смещение поменьше.", MsgBoxStyle.Critical, "Errorка")
        FlushBufer()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        SrcBuffer = txt.Text
        salt = NumericUpDown1.Value

        For i = 0 To Len(SrcBuffer) - 1
            txt.SelectionStart = i
            txt.SelectionLength = 1
            bufArray(i) = txt.SelectedText
            numBuf = (Asc(bufArray(i)) - salt)
            On Error GoTo Errka
            bufArray(i) = Chr(numBuf)
            bufer = bufer + bufArray(i)
        Next

        txt.Text = bufer
        FlushBufer()
        Exit Sub
errka:
        MsgBox("Ошибка шифрования! Проверьте смещение, или вы расшифровывали слишком много раз.", MsgBoxStyle.Critical, "Errorка")
        FlushBufer()
    End Sub

End Class
