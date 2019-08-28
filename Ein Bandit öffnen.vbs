Dim ObjShell
Set ObjShell = CreateObject("WScript.Shell")
ObJShell.Popup "5","1",""
ObJShell.Popup "4","1",""
ObJShell.Popup "3","1",""
ObJShell.Popup "2","1",""
ObJShell.Popup "1","1",""
Dim Shell, Ton
Set Shell = WScript.CreateObject("WScript.Shell")
Ton = chr(007)
Shell.Run "cmd /c @echo " & Ton, 0
Dim Sapi
Set Sapi = Wscript.CreateObject("SAPI.SpVoice")
Sapi.speak "Einarmiger Bandit wird gestartet"
m = 1000

x = MsgBox("Herzlich Willkommen zu Casino.vbs!" & vbCrLf & "Ihr aktuelles Geld: 1 000 €",1+48,"Virtual Casino")
Sapi.speak "Herzlich Willkommen zu Casino"
Sapi.speak "Ihr aktuelles Geld beträgt 1000 €"
m = 1000
If x=1 then
	Do
		y = MsgBox("'OK' drücken, um zu drehen" & vbCrLf & "Kostet 100€",1+64,"Money:" & m & "$")
		If y = 1 then
			m = m-100
			a = Int((RND*10)+1)
			b = Int((RND*10)+1)
			c = Int((RND*10)+1)
			MsgBox a & "|" & b & "|" & c,0,"Einarmiger Bandit"
			If a = b then
				If b = c then
					m = m+600
					MsgBox "Gratuliere! +600€!" & vbCrLf & m & "$"
					v = MsgBox("Nochmal?",4)
					If v = 6 then
						f = 100
					else
						f = 1
					end if
				else
					g = MsgBox("Leider nicht! :-(" & vbCrLf & "Nochmal?" & vbCrLf & m & "$",4)
					If g = 6 then
						If m=0 then
							MsgBox "Du hast leider kein Geld mehr!!"
							f = 1
						else
							f = 100
						end if
					else
						f = 1
					end if
				end if				
			else
					g = MsgBox("Leider nicht! :-(" & vbCrLf & "Nochmal?" & vbCrLf & m & "€",4)
					If g = 6 then
						If m=0 then
							MsgBox "Du hast leider kein Geld mehr!!"
Sapi.speak "Sie haben kein Geld mehr!!"
							f = 1
						else
							f = 100
						end if
					else
						f = 1
					end if
			end if
		else
			f = 1
		end if
	loop until f=1
else
	f = 1
end if
Sapi.speak "Danke fürs Spielen"
Sapi.speak "Sie haben Post vom Arbeitsamt sie mussen 10000€ zurück zahlen."