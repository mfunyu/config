#!/bin/zsh

DIR=$HOME

#-------------------oh-my-zsh------------------#
if [ "$ZSH" != "$HOME/.oh-my-zsh" ]; then
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

#--------------------.rc files------------------#
if [ ! -d $DIR/home ]; then
git clone https://github.com/mfunyu/home.git $DIR/home
fi
rm -f ~/.zshrc ~/.vimrc
rm -rf ~/.vim
ln -s $DIR/home/.zshrc ~/.zshrc
ln -s $DIR/home/.vimrc ~/.vimrc
ln -s $DIR/home/.vim ~/.vim

source ~/.vimrc
source ~/.zshrc

#--------------------Homebrew------------------#
if ! command -v brew >/dev/null 2>&1; then
curl -fsSL https://raw.githubusercontent.com/mfunyu/config/main/homebrew_install.sh | zsh
fi

# apply brew cmd
source ~/.zshrc

#-------------------Install------------------#

brew install gh
brew install tree
brew install vim
