#!/bin/sh

# OS X configuration

# Lots more at:
# https://github.com/paulirish/dotfiles/blob/master/.osx

fancy_echo "Mac OS X configuration ..."

###############################################################################
# Finder, Dock                                                                #
###############################################################################

# Show the ~/Library folder
chflags nohidden ~/Library

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Add iOS Simulator to Launchpad
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app" "/Applications/iOS Simulator.app"

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Faster key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
# This was too quick
#defaults write NSGlobalDomain KeyRepeat -int 1 # normal minimum is 2 (30 ms)

###############################################################################
# Screen                                                                      #
###############################################################################

# Save screenshots to the desktop
#defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
#defaults write com.apple.screencapture disable-shadow -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

# I had issues with Finder locking up so just do manual logout/restart

#for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
#	"Dock" "Finder" "Google Chrome" "Google Chrome Canary" "Mail" "Messages" \
#	"Opera" "Safari" "SizeUp" "Spectacle" "SystemUIServer" "Terminal" \
#	"Transmission" "Twitter" "iCal"; do
#	killall "${app}" > /dev/null 2>&1
#done

fancy_echo "Mac OS X configuration complete."
fancy_echo "Note that some of these changes require a logout/restart to take effect."
