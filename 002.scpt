
set backupClipboard to the clipboard

tell application "System Events"
  keystroke "lc" using command down
end tell

delay 0.2 -- to make sure keystroke will hit cmd+l & cmd+c

tell application "Google Chrome"
	open location (the clipboard)
	activate
end tell

set the clipboard to backupClipboard
