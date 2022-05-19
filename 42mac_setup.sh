#!/bin/zsh -e
#-------------------MenuBar----------------------#
echo "Setting up Menu bar ..."
## display textinput icon
defaults write com.apple.systemuiserver \
  "NSStatusItem Visible com.apple.menuextra.textinput" 1
defaults write com.apple.systemuiserver \
  menuExtras -array-add "/System/Library/CoreServices/Menu Extras/TextInput.menu"
## display volume icon
defaults write com.apple.systemuiserver \
  "NSStatusItem Visible com.apple.menuextra.volume" 1
defaults write com.apple.systemuiserver \
  menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Volume.menu"
## display bluetooth icon
defaults write com.apple.systemuiserver \
  "NSStatusItem Visible com.apple.menuextra.bluetooth" 1
defaults write com.apple.systemuiserver \
  menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

# reload MenuBar
killall SystemUIServer

#-------------------Dock----------------------#
echo "Setting up Dock ..."
defaults write com.apple.dock orientation left
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 96
defaults write com.apple.dock autohide -bool true

## delete all icons
defaults write com.apple.dock persistent-apps -array

# for recovery
# defaults delete com.apple.dock

# reload Dock
killall Dock

#-------------------Others----------------------#
echo "Setting up the rest ..."
## screen shot prefix
defaults write com.apple.screencapture name "SS"

# reload
killall SystemUIServer



## ban .DS_store
defaults write com.apple.desktopservices DSDontWriteNetworkStores True

# reload
killall Finder


#-------------------Install brew------------------#
echo "Setting up Dock ..."
# install brew
if [ ! -e $HOME/goinfre/.brew ]; then
curl -fsSL https://raw.githubusercontent.com/mfunyu/config/main/42homebrew_install.sh | zsh
fi

# apply brew cmd
source ~/.zshrc

#-------------------Custom Dock------------------#
brew install dockutil

dockutil --add /Applications/System\ Preferences.app
dockutil --add /Applications/Launchpad.app
dockutil --add /Applications/Google\ Chrome.app
dockutil --add /Applications/iTerm.app
dockutil --add /Applications/Visual\ Studio\ Code.app
dockutil --add /Applications/Discord.app
dockutil --add /Applications/Slack.app
dockutil --add /Applications/Calendar.app

