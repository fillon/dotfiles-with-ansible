#!/bin/sh

mkdir ~/Workspace

xcode-select --install

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew update

brew install git
brew install ansible


# Apps
brew cask install totalspaces
brew cask install vlc
brew cask install jdownloader
brew cask install mkvtools
brew cask install the-unarchiver
brew cask install plex-home-theater
brew cask install adobe-reader
brew cask install flash-player
brew cask install skype
brew cask install spotify
brew cask install transmission

# Development
brew cask install google-chrome
brew cask install firefox
brew cask install phpstorm
brew cask install iterm2
brew cask install sublime-text
brew cask install sourcetree
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
brew cask install filezilla
brew cask install mysqlworkbench
brew cask install robomongo