#!/bin/sh

# Specific local installs and config

fancy_echo "Secondary local setup ..."

bin=$(dirname -- "$0")

#--- Any dev ---
brew_install_or_upgrade 'git'
brew_install_or_upgrade 'bash-completion'

#--- Web dev ---

brew_install_or_upgrade 'node'
fancy_echo "Node version: $(node -v)"
fancy_echo "NPM version: $(npm -v)"

npm install -g bower
fancy_echo "Bower version: $(bower -v)"
npm install -g gulp
fancy_echo "Gulp version: $(gulp -v)"
npm install -g karma-cli
# Getting version of global karma not as simple as others
npm install -g @angular/cli
fancy_echo "Angular CLI version: $(ng -v)"
npm install -g firebase-tools
fancy_echo "Firebase CLI version: $(firebase --version)"

#--- Android dev ---

# Enable java install as needed; Disabled by default because its so slow
# Cask default is latest JDK
#brew cask install java
java -version

brew_install_or_upgrade gradle
gradle -v

brew cask install virtualbox
brew cask install androidtool

#--- Ionic dev ---

npm install -g cordova
fancy_echo "Cordova CLI version: $(cordova -v)"
npm install -g ionic
fancy_echo "Ionic CLI version: $(ionic -v)"
npm install -g ios-sim
npm install -g ios-deploy

# Need ant until Ionic migrates to Gradle/Android Studio
#brew install ant

#--- Hosting ---

brew_install_or_upgrade 'heroku-toolbelt'

#--- Other ---

# Not using Cask for Google Chrome, due to known and potential issues

brew cask install google-drive
brew cask install dropbox

fancy_echo "Clean up non-current Brew and Cask downloads ..."
brew cleanup --outdated
brew cask cleanup --outdated

# Dotfiles
fancy_echo "Copying dotfiles ..."
for dotfile in ".bash_profile" \
    ".bash_prompt" \
    ".aliases" \
    ".functions" \
    ".gitconfig" \
    ".gitignore_global"; do
	cp $bin/dotfiles/"${dotfile}" ~/ > /dev/null 2>&1
done

fancy_echo "Secondary local setup complete."
