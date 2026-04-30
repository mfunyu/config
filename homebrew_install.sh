#!/bin/zsh

# Standard Homebrew install for non-42 Macs

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add brew to PATH for Apple Silicon and Intel Macs
if [ -x /opt/homebrew/bin/brew ]; then
  BREW_SHELLENV='eval "$(/opt/homebrew/bin/brew shellenv)"'
elif [ -x /usr/local/bin/brew ]; then
  BREW_SHELLENV='eval "$(/usr/local/bin/brew shellenv)"'
fi

if [ -n "$BREW_SHELLENV" ] && ! grep -qF "$BREW_SHELLENV" "$HOME/.zshrc" 2>/dev/null; then
cat >> $HOME/.zshrc <<EOL

# Load Homebrew shellenv
$BREW_SHELLENV
EOL
fi

eval "$BREW_SHELLENV"
brew update

echo "\nPlease open a new shell to finish installation"
