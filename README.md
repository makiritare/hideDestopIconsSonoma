Just a script you can run in the console or in Automator to hide or show icons in the desktop whiout needing to restart the Finder

```
# Attempt to read the current setting
currentSetting=$(defaults read com.apple.WindowManager StandardHideDesktopIcons)

if [ "$currentSetting" = "1" ]; then
    # If currently true (1), set to false
    defaults write com.apple.WindowManager StandardHideDesktopIcons -bool false
else
    # If currently false (0) or not set, set to true
    defaults write com.apple.WindowManager StandardHideDesktopIcons -bool true
fi
```
