#!/bin/sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

brew install git-lfs nmap wget

brew cask install 1password
brew cask install omnifocus
brew cask install istat-menus
brew cask install bbedit
brew cask install vmware-fusion

