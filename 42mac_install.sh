#!/bin/zsh

# install brew
if [ ! -e $HOME/goinfre/.brew ]; then
curl -fsSL https://raw.githubusercontent.com/mfunyu/config/main/42homebrew_install.sh | zsh
fi

# apply brew cmd
source ~/.zshrc

#-------------------Install------------------#

brew install gh
brew install tree

#oh-my-zsh
if [ ! -e $ZSH ]; then
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

git clone https://github.com/mfunyu/home.git
rm -Rf home/.git
mv home/.* $HOME
rm -Rf home
