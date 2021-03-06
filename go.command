#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cp $DIR/configs/vimrc ~/.vimrc
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undo

cp $DIR/configs/zshrc ~/.zshrc
cp -r $DIR/configs/zsh ~/.zsh

cd ~/Git/macos-setup && bash scripts/01-homebrew-install.sh
cd ~/Git/macos-setup && bash scripts/02-terminal.sh
cd ~/Git/macos-setup && bash scripts/03-macos-app-store.sh
cd ~/Git/macos-setup && sudo bash scripts/04-munki.sh
cd ~/Git/macos-setup && bash scripts/05-homebrew-apps.sh
