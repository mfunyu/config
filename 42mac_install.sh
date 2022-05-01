#!/bin/zsh

#-------------------oh-my-zsh------------------#
if [ ! -e $ZSH ]; then
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

#--------------------.rc files------------------#
git clone https://github.com/mfunyu/home.git $HOME/goinfre/home
rm ~/.zshrc ~/.vimrc
rm -Rf ~/.vim/
ln -s $HOME/goinfre/home/.zshrc ~/.zshrc
ln -s $HOME/goinfre/home/.vimrc ~/.vimrc
ln -s $HOME/goinfre/home/.vim ~/.vim

source ~/.vimrc
source ~/.zshrc

#--------------------Homebrew------------------#
# install brew
if [ ! -e $HOME/goinfre/.brew ]; then
curl -fsSL https://raw.githubusercontent.com/mfunyu/config/main/42homebrew_install.sh | zsh
fi

# apply brew cmd
source ~/.zshrc

#-------------------Install------------------#

brew install gh
brew install tree
brew install vim


