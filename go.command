#!/usr/bin/env bash

/usr/bin/xcode-select --install

read -n 1 -s -r -p "Press any key to continue when Xcode tools are done installing"

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cp -r $DIR/configs/gnupg ~/.gnupg
cp -r $DIR/configs/ssh ~/.ssh

cp $DIR/configs/vimrc ~/.vimrc
cp $DIR/configs/private/bash_profile ~/.bash_profile
cp $DIR/configs/inputrc ~/.inputrc


mkdir ~/Git

#cd ~/Git && git clone git@bones.journalism.wisc.edu:sterling/macos-settings.git
#cp ~/Git/macos-settings/configs/bash_profile ~/.bash_profile && source ~/.bash_profile

cd ~/Git && git clone https://github.com/strlng/macos-setup
read -n 1 -s -r -p "Press any key to continue after checking scripts/01-homebrew-install.sh"
cd ~/Git/macos-setup && bash scripts/01-homebrew-install.sh
read -n 1 -s -r -p "Press any key to continue after checking scripts/02-terminal.sh"
cd ~/Git/macos-setup && bash scripts/02-terminal.sh
read -n 1 -s -r -p "Press any key to continue after checking scripts/03-macos-app-store.sh"
cd ~/Git/macos-setup && bash scripts/03-macos-app-store.sh
read -n 1 -s -r -p "Press any key to continue after checking scripts/04-munki.sh"
cd ~/Git/macos-setup && sudo bash scripts/04-munki.sh
read -n 1 -s -r -p "Press any key to continue after checking scripts/05-games.sh"
cd ~/Git/macos-setup && bash scripts/05-games.sh
