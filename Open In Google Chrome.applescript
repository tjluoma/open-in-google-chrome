

-- 2013-02-10 by Jolin Warren of oakandapple.org

-- For more information, see http://www.tuaw.com/2011/03/14/use-applescript-to-open-current-safari-url-in-google-chrome/

tell application "Safari"
  set vURL to URL of current tab of window 1
end tell

tell application "Google Chrome"
	if windows ≠ {} then
		make new tab at the end of window 1 with properties {URL:vURL}
	else
		make new window
		set URL of (active tab of window 1) to vURL
	end if
	
	activate
end tell
