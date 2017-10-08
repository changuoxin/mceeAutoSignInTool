set theOffice365EduSubDomain to "subdomain"
set theOffice365EduPASS to "PASSWORD"
set theResponse to display dialog "ID番号を入力してください" default answer "01" with icon note buttons {"Cancel", "Continue"} default button "Continue"
--> {button returned:"Continue", text returned:"01"}
tell application "System Events"
	tell process "Minecraft: Education Edition"
		set frontmost to true
		if windows is not {} then perform action "AXRaise" of item 1 of windows
		delay 1
		tell window ""
			keystroke "test" & (text returned of theResponse) & "@" & theOffice365EduSubDomain & ".onmicrosoft.com"
			keystroke tab
			keystroke theOffice365EduPASS
			delay 3
			key code 76
		end tell
	end tell
end tell
