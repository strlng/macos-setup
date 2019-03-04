# macos-setup

Scripts and files used when setting up my personal Macs. The repository is stored on a flash drive. After initial log in on a new Mac the drive is plugged in and I double click go.command to kick it off.

### go.command
This is the base script that starts everything else. It does a few things:

1. Instal xcode command line tools
2. Copy various config files. Some of these are in the `private` folder which is not pushed to GitHub.
3. Run the other scripts.
    - 01-homebrew-install.sh - Install [HomeBrew](https://brew.sh) and a couple packages
    - 02-terminal.sh - Set up the Terminal how I like it.
      This one does a bunch. It installs the Source Code Pro font and the [Base16](https://github.com/chriskempson/base16) color scheme for vim and Terminal.
    - 03-macos-app-store.sh - Installs mas command line tool, prompts user to sign in to Mac App Store, then installs a bunch of app store applications.
    - 04-munki.sh - I use [Munki](https://www.munki.org) to manage my fleet and this script adds several applications the the SelfServeManifest so munki will install them.
    - 05-games.sh - Finally, this install the Battle.net application and runs it.
