# Grasseh's Ubuntu Dotfiles

This repository contains my personal dotfiles for Ubuntu based systems. This should technically work or any Debian based system, but it only has been tested in a Ubuntu 15.04 environment.

## Installation

To install, run the following commands in your terminal :
 
    cd ~
    git clone git@github.com:Grasseh/UbuntuDotfiles.git
    mv ~/UbuntuDotFiles ~/dotfiles
    cd ~/dotfiles
    bash init.sh
    source .bash_profile

You need sudo rights to run some commands in the bash file. You may need to enter your sudo password during the execution of the scripts. You will need to enter a MySQL password during the execution. 

## Sources
These dotfiles are based on my personal OSX dotfiles, which can be found at https://www.github.com/Grasseh/OSXDotfiles . 
My OSX dotfiles were originally forked from https://www.github.com/franatieu/Dotfiles
