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

cp $DIR/configs/vimrc ~/.vimrc
cp $DIR/configs/inputrc ~/.inputrc

cp -r $DIR/private/gnupg ~/.gnupg
cp -r $DIR/private/ssh ~/.ssh

cp $DIR/private/bash_profile ~/.bash_profile
cp $DIR/private/gitignore ~/.gitignore

mkdir ~/Git

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
