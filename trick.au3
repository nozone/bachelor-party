#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.10.2
 Author:         Martin

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------


$textToBeDisplayed = "Hello Nick... The time has come, for a journey of a thousand meters." & _
"You must travel to a park to find a mystical chest. Please hurry there is very little time."

$textRevealSpeed = 30

Opt("SendKeyDelay",$textRevealSpeed)

Run("notepad.exe","", @SW_MAXIMIZE)

WinWaitActive("Untitled - Notepad")

WinMenuSelectItem("Untitled - ", "", "F&ormat", "&Font")

WinWait("Font", "Cancel")

ControlSetText("Font", "Cancel", "Edit1", "Modern")
ControlSetText("Font", "Cancel", "Edit2", "Regular")
ControlSetText("Font", "Cancel", "Edit3", "22")
ControlClick("Font", "Cancel", "Button5")

Send($textToBeDisplayed)