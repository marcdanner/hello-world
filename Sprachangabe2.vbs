
Dim Shell, Ton
Set Shell = WScript.CreateObject("WScript.Shell")
Ton = chr(007)
Shell.Run "cmd /c @echo " & Ton, 0
Dim Sapi
Set Sapi = Wscript.CreateObject("SAPI.SpVoice")
Sapi.speak "Hello Master"
