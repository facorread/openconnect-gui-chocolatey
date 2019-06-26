#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinWait, OpenConnect-GUI Setup, , 300
WinActivate, OpenConnect-GUI Setup
Sleep 1000
Send !N!A{Down}!N!N!N{Tab}T{Space}!I
WinWait, OpenConnect-GUI Setup, Finish, 600
Send !R!F
