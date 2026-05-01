#!/bin/zsh -e
#-------------------MenuBar----------------------#
echo "Setting up Menu bar ..."
## display textinput icon
defaults write com.apple.TextInputMenu visible -bool true
## display volume icon (18 = show in menu bar)
defaults -currentHost write com.apple.controlcenter Sound -int 18
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool true
## display bluetooth icon (18 = show in menu bar)
defaults -currentHost write com.apple.controlcenter Bluetooth -int 18
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true

# reload MenuBar
killall SystemUIServer
killall ControlCenter

#-------------------Dock----------------------#
echo "Setting up Dock ..."
defaults write com.apple.dock orientation left
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock tilesize -int 48
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
echo "Installing Homebrew ..."
if ! command -v brew >/dev/null 2>&1; then
curl -fsSL https://raw.githubusercontent.com/mfunyu/config/main/homebrew_install.sh | zsh
fi

# apply brew cmd
source ~/.zshrc

#-------------------Apps------------------#
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask discord
brew install --cask claude
brew install --cask deepl
brew install --cask anki
brew install --cask conductor
brew install --cask docker

#-------------------Custom Dock------------------#
brew install dockutil

dockutil --add /Applications/Google\ Chrome.app
dockutil --add /Applications/iTerm.app
dockutil --add /Applications/Visual\ Studio\ Code.app
dockutil --add /Applications/Discord.app
dockutil --add /Applications/Slack.app
