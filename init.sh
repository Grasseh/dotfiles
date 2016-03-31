#!/bin/bash

echo "Loading Configuration Dotfiles!"
mkdir tmp

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

echo "Installing missing programs"

if ! command -v "vim" > /dev/null; then
    echo " Vim is not installed." 
    echo "Installing Vim"
    sudo apt-get install vim
else
    echo "Vim is already installed!"
fi

if ! command -v "wget" > /dev/null; then
    echo "Wget is not installed." 
    echo "Installing Wget"
    sudo apt-get install wget
else
    echo "Wget is already installed!"
fi

if ! command -v "atom" > /dev/null; then
    echo "Atom is not installed." 
    echo "Installing Atom"
    wget -P /tmp/ https://github.com/atom/atom/releases/download/v1.6.1/atom-amd64.deb
    sudo dpkg --install /tmp/atom-amd64.deb
else
    echo "Atom is already installed!"
fi

if ! command -v "netbeans" > /dev/null; then
    echo "Netbeans is not installed." 
    echo "Installing Netbeans"
    sudo apt-get install netbeans 
else
    echo "Netbeans is already installed!"
fi




echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

echo "Creating file symlinks"

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig;
echo "Done linking Global Git Config"

ln -sf ~/dotfiles/.gitignore ~/.gitignore;
echo "Done linking Global Git Ignore"

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile;
echo "Done linking Bash Profile"  

ln -sf ~/dotfiles/.bashrc ~/.bashrc;
echo "Done linking Bash rc"  


echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

rm -df tmp
echo "Done writing configurations!"
