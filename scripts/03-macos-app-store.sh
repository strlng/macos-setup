#!/bin/sh

# install mas-cli to install from the Mac App store
brew install mas

# get Apple ID
echo ""
echo "Enter AppleID to signin to Mac App Store:"
read -p "  AppleID (john@foo.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

# install macos apps
mas install 1289583905 # Pixelmator Pro
mas install 904280696 # Things3
mas install 409183694 # Keynote
mas install 409907375 # Remote Desktop
mas install 931657367 # Calcbot
mas install 441258766 # Magnet
mas install 682658836 # GarageBand
mas install 451907568 # Paprika Recipe Manager
mas install 411643860 # DaisyDisk
mas install 1333542190 # 1Password 7
mas install 557168941 # Tweetbot
mas install 975937182 # Fantastical 2
mas install 409203825 # Numbers
mas install 497799835 # Xcode
mas install 409201541 # Pages
mas install 1091189122 # Bear
mas install 408981434 # iMovie
mas install 1148868081 # iStat View
mas install 1082624744 # Gifox
mas install 803453959 # Slack
mas install 924726344 # Deliveries
