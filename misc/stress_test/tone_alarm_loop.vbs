﻿#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	for i=0 to 500
	crt.Screen.Send "reboot" & chr(13)
	crt.Screen.WaitForString "nsh> " & chr(27) & "[K"
	Delay 2
	crt.Screen.Send "tone_alarm 2" & chr(13)
	crt.Screen.WaitForString "nsh> " & chr(27) & "[K"
	Delay 3
	crt.Screen.Send "tone_alarm 3" & chr(13)
	crt.Screen.WaitForString "nsh> " & chr(27) & "[K"
	Delay 2
	crt.Screen.Send "tone_alarm 4" & chr(13)
	crt.Screen.WaitForString "nsh> " & chr(27) & "[K"
	Delay 2
	crt.Screen.Send "tone_alarm 5" & chr(13)
	crt.Screen.WaitForString "nsh> " & chr(27) & "[K"
	Delay 3
	crt.Screen.Send "tone_alarm 6" & chr(13)
	crt.Screen.WaitForString "nsh> " & chr(27) & "[K"
	Delay 3
	crt.Screen.Send "tone_alarm 7" & chr(13)
	crt.Screen.WaitForString "nsh> " & chr(27) & "[K"
	Delay 3
	crt.Screen.Send "tone_alarm 8" & chr(13)
	crt.Screen.WaitForString "nsh> " & chr(27) & "[K"
	Delay 3
	next
End Sub

' Get a 10 seconds delay
Sub Delay( seconds )
	Dim wshShell, strCmd
	Set wshShell = CreateObject( "Wscript.Shell" )
	strCmd = "%COMSPEC% /C (PING -n " & ( seconds + 1 ) & " 127.0.0.1 >NUL 2>&1 || PING -n " & seconds & " ::1 >NUL 2>&1)"
	wshShell.Run strCmd, 0, 1
	Set wshShell = Nothing
End Sub
