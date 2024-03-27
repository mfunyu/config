#!/bin/zsh

DIR=$HOME/sgoinfre

#-------------------oh-my-zsh------------------#
if [ "$ZSH" != "$HOME/.oh-my-zsh" ]; then
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

#--------------------.rc files------------------#
git clone https://github.com/mfunyu/home.git $DIR/home
rm ~/.zshrc ~/.vimrc ~/.vim/
ln -s $DIR/home/.zshrc ~/.zshrc
ln -s $DIR/home/.vimrc ~/.vimrc
ln -s $DIR/home/.vim ~/.vim

source ~/.vimrc
source ~/.zshrc

#--------------------Homebrew------------------#
# install brew
if [ ! -e $DIR/.brew ]; then
curl -fsSL https://raw.githubusercontent.com/mfunyu/config/main/42homebrew_install_sgoinfre.sh | zsh
fi

# apply brew cmd
source ~/.zshrc

#-------------------Install------------------#

brew install gh
brew install tree
brew install vim


