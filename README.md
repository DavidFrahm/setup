# Description

My solution for laptop configuration management, which includes:

* Install/upgrade of package managers; e.g., Homebrew, Cask, NPM
* Install/upgrade of apps and tools (not from App Store); e.g., Java
* Configure some OS X [dotfiles](https://dotfiles.github.io/); e.g., Git, aliases
* Set various OS X preferences and settings

All operations are designed to be idempotent, meaning that its safe to run the script repeatedly.

Many others exist, but I thought most were over-engineered and I wanted to learn more about this so I created my own.
I use the term 'created' loosely, as I borrowed heavily from various others around the web.

This project was initially based on `mac` script from [thoughtbot laptop project](https://github.com/thoughtbot/laptop)
* See original for Zshell, Ruby, and more that I didn't need

# Usage

1. Clone repo to your laptop
1. Review and edit as necessary to fit your needs
1. Run it:

    $ ./Projects/setup/run.sh

# Helpful Info

Resources for defaults keys:

* [Secrets](http://secrets.blacktree.com): A database of hidden settings for Mac OS X
