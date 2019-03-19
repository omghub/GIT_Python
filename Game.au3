#include <ColorConstants.au3>
#include <GUIConstantsEX.au3>
#include <FontConstants.au3>
#include <StaticConstants.au3>
#include <ButtonConstants.au3>
#include <MsgBoxConstants.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>
#include <TreeViewConstants.au3>
#include <WinAPISysWin.au3>
HotKeySet("{F5}","EX")
Func EX()
	Exit
EndFunc

GUICreate("",300,300,500,400)
$void1 = GUICtrlCreateLabel('',10,0,10,500)
	GUICtrlSetBkColor(-1,0x00ff00)
$void2 = GUICtrlCreateLabel('',0,10,500,10)
	GUICtrlSetBkColor(-1,0x00ff00)
GUISetState(@SW_SHOW)


While True
	$MSG=GUIGetMsg($GUI_EVENT_ARRAY)
	Switch $MSG[0]
		Case $GUI_EVENT_CLOSE
			Exit
		Case $GUI_EVENT_MOUSEMOVE
			If PixelGetColor(MouseGetPos()[0],MouseGetPos()[1]) = 0x00ff00 then
				Select
					Case 10<$MSG[3] And $MSG[3]<20
						If 0<$MSG[4] And $MSG[4]<300 Then GUICtrlSetBkColor($void1,0xff00ff)
					Case 10<$MSG[4] And $MSG[4]<20
						If 0<$MSG[3] And $MSG[3]<300 Then GUICtrlSetBkColor($void2,0xff00ff)
				EndSelect
			Else
				GUICtrlSetBkColor($void1,0x00ff00)
				GUICtrlSetBkColor($void2,0x00ff00)
			EndIf
	EndSwitch
WEnd