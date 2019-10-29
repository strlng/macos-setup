#!/bin/sh

# install mas-cli to install from the Mac App store
brew install mas

# sign in to app store to get app store installs to work
open /Applications/App\ Store.app
read -n 1 -s -r -p "Press any key to continue after signing in to App Store"

# install macos apps
mas install 497799835 #Xcode (10.0)

mas install 1107421413 #1Blocker (1.4.3)
mas install 931657367 #Calcbot (1.0.7)
mas install 587512244 #Kaleidoscope (2.2.2)
mas install 451907568 #Paprika Recipe Manager (2.2.0)
mas install 1082624744 #Gifox (1.6.1)
mas install 924726344 #Deliveries (3.0.9)
mas install 1289583905 #Pixelmator Pro (1.1.4)
mas install 441258766 #Magnet (2.4)
mas install 442168834 #SiteSucker (2.11.8)
mas install 1148868081 #iStat View (3.04)
mas install 1289197285 #MindNode (5.2.6)
mas install 409201541 #Pages (7.2)
mas install 409203825 #Numbers (5.2)
mas install 409183694 #Keynote (8.2)
mas install 409907375 #Remote Desktop (3.9)
mas install 1037126344 #Apple Configurator 2 (2.7.1)
mas install 1295203466 #Microsoft Remote Desktop (10.2.1)
mas install 803453959 #Slack (3.3.2)
mas install 1116599239 #NordVPN IKE (4.11.7)
