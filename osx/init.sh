
echo "check OSX..."

# top menu
defaults write com.apple.systemuiserver menuExtras -array “/System/Library/CoreServices/Menu Extras/AirPort.menu” “/System/Library/CoreServices/Menu Extras/Volume.menu” “/System/Library/CoreServices/Menu Extras/Clock.menu”

# dock icons
defaults write com.apple.dock tilesize -float 60
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -float 96
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock launchanim -bool false

# mission control
defaults write com.apple.dock expose-animation-duration -float 0.1

# time machine
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# itunes
defaults write com.apple.iTunes disablePingSidebar -bool true
defaults write com.apple.iTunes disablePing -bool true

# opening apps
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write com.apple.CrashReporter DialogType -string “none”

# resizing
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# file panels
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# tab key in modals
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# zoom with Ctrl
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# screenshots
defaults write com.apple.screencapture location -string “$HOME/Desktop”
defaults write com.apple.screencapture type -string “png”
defaults write com.apple.screencapture disable-shadow -bool true

# finder
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.finder FXPreferredViewStyle -string “Nlsv”
defaults write com.apple.finder ShowStatusBar -bool true

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → Mission Control
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-br-corner -int 0
defaults write com.apple.dock wvous-br-modifier -int 0
