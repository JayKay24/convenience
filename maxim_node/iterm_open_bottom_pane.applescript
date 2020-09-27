#!/usr/bin/osascript

tell application "Finder"
  set main_folder to container of (path to me)
end tell

tell application "System Events"
  delay 0.5
  keystroke "D" using command down
  delay 0.5
end tell

#do shell script  "./" & main_folder & "/setup_workspace_for_maximillian_node.sh"
do shell script "echo " & main_folder
