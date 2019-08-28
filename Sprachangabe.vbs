Dim ObjShell
Set ObjShell = CreateObject("WScript.Shell")
ObJShell.Popup "2","1",""
ObJShell.Popup "1","1",""
Dim Shell, Ton
Set Shell = WScript.CreateObject("WScript.Shell")
Ton = chr(007)
Shell.Run "cmd /c @echo " & Ton, 0
Dim Sapi
Set Sapi = Wscript.CreateObject("SAPI.SpVoice")
Sapi.speak "HALT STOPP JETZT REDE ICH / GAY"