#SingleInstance Force
; #ErrorStdOut             ; Best to keep this one disabled; it silences some errors.
; #Warn                    ; Enable warnings to assist with detecting common errors.
SendMode "Input"           ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.

setup_window_title := "OpenConnect-GUI Setup"

WinWait(setup_window_title, , 300)
WinActivate(setup_window_title)
Sleep(1000)
Send("!N!A{Down}!N!N!NF{Tab}T{Space}!I")
WinWait(setup_window_title, "Finish", 600)
Send("!R!F")
