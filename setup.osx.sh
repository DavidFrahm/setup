#!/bin/sh

# OS X configuration

# Lots more at:
# https://github.com/paulirish/dotfiles/blob/master/.osx

fancy_echo "Mac OS X configuration ..."

# Show the ~/Library folder
chflags nohidden ~/Library

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Add iOS Simulator to Launchpad
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app" "/Applications/iOS Simulator.app"

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
