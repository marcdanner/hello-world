Dim best, Shell
Set Shell = WScript.CreateObject("WScript.Shell")
best = MsgBox("Möchten Sie den Computer neu starten?", 4, "Neu starten?")
If best = "7" Then
 WScript.Quit
Else
 Shell.run "shutdown.exe -r -t 10"
End If