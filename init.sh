#!/bin/bash

echo "Loading Configuration Dotfiles!"

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

echo "Installing missing programs"

if ! command -v "vim" > /dev/null; then
    echo " Vim is not installed." 
    echo "Installing Vim"
    sudo apt-get install vim
else
    echo "Vim is already installed!"
fi

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

echo "Creating file symlinks"

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig;
echo "Done linking Global Git Config"

ln -sf ~/dotfiles/.gitignore ~/.gitignore;
echo "Done linking Global Git Ignore"

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile;
echo "Done linking Bash Profile"  

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

echo "Done writing configurations!"
