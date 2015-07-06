#!/bin/sh

# Specific local installs and config

fancy_echo "Secondary local setup ..."

# Not using Cask for Google Chrome, due to known and potential issues

# Cask default is latest JDK
brew cask install java
java -version

brew_install_or_upgrade 'node'
fancy_echo "Node version: $(node -v)"

# Others for consideration:
# brew_install_or_upgrade 'heroku-toolbelt'

fancy_echo "Clean up non-current Brew and Cask downloads ..."
brew cleanup --outdated
brew cask cleanup --outdated

git config --global user.name "David Frahm"
git config --global user.email david@midmoapps.com
git config --global push.default matching
git config --global push.default simple

fancy_echo "Secondary local setup complete."
