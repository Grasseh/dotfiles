#!/bin/bash

########################################################################
#    .
#   /|\
#  / |/\
# | \|'.|
# \.'|/ /
#  \'|'/
#   `|´
#    |
# This file was written by Steve "Grasseh" Gagné and is free of reuse.
# It contains commands to be ran on all UNIX system.
# It also includes links to other files to be called during installation.
#########################################################################

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
mkdir ~/.vim/bundle
cd ~/.vim/bundle
while read v; do
    git clone $v
done <~/dotfiles/vim_plugins.txt

#!?!?!?!?!?!?!?!?!?!?!?!
# Done
#!?!?!?!?!?!?!?!?!?!?!?!
cd ~/dotfiles
echo "Dotfiles installed succesfully"
