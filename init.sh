#!/bin/bash

###########################################################################
#    .
#   /|\
#  / |/\
# | \|'.|
# \.'|/ /
#  \'|'/
#   `|´
#    |
# This file was written by Steve "Grasseh" Gagné and can be reused for free.
# It contains commands to be ran on all UNIX system.
# It also includes links to other files to be called during installation.
############################################################################

#!?!?!?!?!?!?!?!?!?!?!?!
# Os Setup
#!?!?!?!?!?!?!?!?!?!?!?!
OS="None"

if  [[ $(uname -a | grep "Ubuntu") ]]; then
    OS="ubuntu"
fi
if  [[ $(uname -a | grep "Linux") ]]; then
    OS="ubuntu"
fi
if  [[ $(uname -a | grep "Darwin") ]]; then
    OS="osx"
fi

#!?!?!?!?!?!?!?!?!?!?!?!
# Symlimks
#!?!?!?!?!?!?!?!?!?!?!?!
cd links
shopt -s dotglob
# TODO : Handle folders to symlink
for file in *
do
    ln -sf ~/dotfiles/links/$file ~/$file
done
ln -sf ~/dotfiles/$OS/.bash_aliases ~/.bash_aliases
cd ..

#!?!?!?!?!?!?!?!?!?!?!?!
# Configs
#!?!?!?!?!?!?!?!?!?!?!?!
if  [[ "$OS" == "ubuntu" ]]; then
    echo "Setting up 9 ubuntu settings"
fi
if  [[ "$OS" == "osx" ]]; then
    defaults write com.apple.finder AppleShowAllFiles YES. #Show Hidden Files
    defaults write -g com.apple.trackpad.scaling -float 5.0 # > Trackpade speed
    defaults write -g com.apple.mouse.scaling 3 # > Mouse Speed
fi

#!?!?!?!?!?!?!?!?!?!?!?!
# Software
#!?!?!?!?!?!?!?!?!?!?!?!

## Apt
if  [[ "$OS" == "ubuntu" ]]; then
    sudo apt autoremove -y
    while read v; do
        sudo apt install -y $v
    done <~/dotfiles/apt.txt
fi

## Brew
if  [[ "$OS" == "osx" ]]; then
    bash osx/install.sh
    while read v; do
        brew install $v
    done <~/dotfiles/brew.txt
fi

## Vim
directory="~/.vim/bundle"
if [ ! -d $directory ]; then
    mkdir ~/.vim/bundle
fi
cd ~/.vim/bundle
regex="^https:\/\/github.com\/.+\/(.+)$"
while read v; do
    if [[ $v =~ $regex ]]; then
        folder=BASH_REMATCH[1]
        directory="~/.vim/bundle/$folder"
        if [ ! -d $directory ]; then
            git clone $v
        fi
    fi
done <~/dotfiles/vim_plugins.txt

##NerdFont(ForVim)
# TODO : Check if font was already installed
bash ~/.vim/bundle/nerd-fonts/install.sh FiraMono

#!?!?!?!?!?!?!?!?!?!?!?!
# Done
#!?!?!?!?!?!?!?!?!?!?!?!
cd ~/dotfiles
echo "Dotfiles installed succesfully"
