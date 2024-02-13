# Attempt to read the current setting, defaulting to false if not set
currentSetting=$(defaults read com.apple.WindowManager StandardHideDesktopIcons)

if [ "$currentSetting" = "1" ]; then
    # If currently true (1), set to false
    defaults write com.apple.WindowManager StandardHideDesktopIcons -bool false
else
    # If currently false (0) or not set, set to true
    defaults write com.apple.WindowManager StandardHideDesktopIcons -bool true
fi

# you may need to restart a process or log out/in for changes to take effect.
