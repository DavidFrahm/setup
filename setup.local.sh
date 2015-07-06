#!/bin/sh

# Specific local installs and config

fancy_echo "Secondary local setup ..."

bin=$(dirname -- "$0")

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

# Dotfiles
fancy_echo "Copying dotfiles ..."
for dotfile in ".gitignore_global" \
    ".gitconfig"; do
	cp $bin/dotfiles/"${dotfile}" ~/ > /dev/null 2>&1
done

fancy_echo "Secondary local setup complete."
