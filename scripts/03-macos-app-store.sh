#!/bin/sh

# install mas-cli to install from the Mac App store
brew install mas

# sign in to app store to get app store installs to work
open /System/Applications/App\ Store.app
read -n 1 -s -r -p "Press any key to continue after signing in to App Store"

# install macos apps
mas install 497799835 #Xcode (11.2)

mas install 1289583905 #Pixelmator Pro (1.5.1)
mas install 587512244 #Kaleidoscope (2.2.2)
mas install 409183694 #Keynote (9.2)
mas install 409907375 #Remote Desktop (3.9.3)
mas install 1107421413 #1Blocker (3.0.2)
mas install 1116599239 #NordVPN IKE (5.0.2)
mas install 931657367 #Calcbot (1.0.7)
mas install 441258766 #Magnet (2.4.5)
mas install 451907568 #Paprika Recipe Manager (2.2.0)
mas install 1289197285 #MindNode (6.1.1)
mas install 1482920575 #DuckDuckGo Privacy Essentials (1.0)
mas install 409203825 #Numbers (6.2)
mas install 409201541 #Pages (8.2)
mas install 1295203466 #Microsoft Remote Desktop (10.3.4)
mas install 924726344 #Deliveries (3.2.1)
mas install 975937182 #Fantastical 2
