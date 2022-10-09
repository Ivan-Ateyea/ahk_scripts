;==================================================================================================

#NoEnv

SetBatchLines -1
SetTitleMatchMode 2
#SingleInstance Force

wintit = Minecraft* 1.15.2 - Multiplayer (3rd-party)

;===================================================================================================
;Shortcuts
;===================================================================================================
Hotkey	!^f,	Fishing		; Pressing ctrl + alt + f will start fishing
Hotkey	!^s,	Stop	        ; Pressing ctrl + alt + s will stop it

;===================================================================================================
;GUI
;===================================================================================================
Gui, Show, w200 h85, Shortcuts
Gui, Add, Button, x10 y10 w100 gFishing, % "Fishing farm"
Gui, Add, Button, yp+40 w100 gStop, % "Stop"
Gui, Show,, MClick
return

;===================================================================================================
;===================================================================================================
Fishing:
{
	IfWinExist %wintit%

	BreakLoop = 0
	Advert = 0
		Loop
		{
			if (Advert = 90000000000000000000000000000)
			{
				Sleep 500
					Send {t down}{t up}
				Sleep 500
					Send New shop open! Come check it out. Do /t spawn saga(Automated Message)
				Sleep 500
					Send {enter down}{enter up}
				Sleep 10
					Advert = 0
			
			}
			if (BreakLoop = 1)
			{
				BreakLoop = 0
				break
			}
			Sleep 100
				ControlClick, , %wintit%, ,Right, , NAD
			Sleep 500
				ControlClick, , %wintit%, ,Right, , NAU
			Sleep 10
				Advert += 1
			if (BreakLoop = 1)
			{
				BreakLoop = 0
				break
			}
		}
	Return
}

;==================================================================================================
Stop:
BreakLoop = 1
return

;===================================================================================================
ESC:
GuiClose:
GuiEscape:
ExitApp