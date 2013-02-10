
-- script courtesy of John C. Welch ~ http://www.bynkii.com/ ~ http://twitter.com/bynkii

-- see http://www.tuaw.com/2011/03/13/open-current-safari-url-in-google-chrome/ 
-- for details on how to use this script

property theURL : ""
tell application "Safari"
  set theURL to URL of current tab of window 1
end tell
tell application "Google Chrome"
	set URL of active tab of window 1 to theURL
	activate
end tell
