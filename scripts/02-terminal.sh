#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

mkdir -p /tmp/terminal


echo "...Installing Source Code Pro font"
brew tap homebrew/cask-fonts && brew cask install font-source-code-pro

echo "...Downloading base16-tomorrow-night vim color scheme"
mkdir -p ~/.vim/colors
curl --silent https://raw.githubusercontent.com/chriskempson/base16-vim/master/colors/base16-tomorrow-night.vim --output ~/.vim/colors/base16-tomorrow-night.vim

echo "...Downloading base16-tomorrow-night iTerm color scheme"
curl --silent https://raw.githubusercontent.com/martinlindhe/base16-iterm2/master/itermcolors/base16-tomorrow-night.itermcolors --output /tmp/terminal/base16-tomorrow-night.itermcolors

echo "...Converting base16-tomorrow-night iTerm color scheme to Apple Terminal color scheme"
curl --silent https://raw.githubusercontent.com/lysyi3m/osx-terminal-themes/master/tools/iterm2terminal.swift --output /tmp/terminal/iterm2terminal.swift
sed -i "" 's/PragmataPro/SourceCodePro-Regular/g' /tmp/terminal/iterm2terminal.swift
sed -i "" 's/"columnCount": 90/"columnCount": 100/g' /tmp/terminal/iterm2terminal.swift
sed -i "" 's/"rowCount": 50/"rowCount": 35/g' /tmp/terminal/iterm2terminal.swift
#sed -i "" 's/Foreground Color/Ansi 7 Color/g' /tmp/terminal/iterm2terminal.swift
sed -i "" 's/BoldTextColor/TextBoldColor/g' /tmp/terminal/iterm2terminal.swift
sed -i "" '/"rowCount": 35,/ i\
"shellExitAction": 1,
' /tmp/terminal/iterm2terminal.swift

chmod +x /tmp/terminal/iterm2terminal.swift
/tmp/terminal/iterm2terminal.swift /tmp/terminal/base16-tomorrow-night.itermcolors

open -g /tmp/terminal/base16-tomorrow-night.terminal

echo "...Setting Termainal application settings"
defaults write ~/Library/Preferences/com.apple.Terminal.plist "Default Window Settings" "base16-tomorrow-night"
defaults write ~/Library/Preferences/com.apple.Terminal.plist "Startup Window Settings" "base16-tomorrow-night"

echo "...Complete! Restart Terminal application for all new settings to take effect."
