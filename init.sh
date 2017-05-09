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

# Os Setup
OS="None"

if  [[ $(uname -a | grep "Ubuntu") ]]; then
    OS="ubuntu"
fi
if  [[ $(uname -a | grep "Darwin") ]]; then
    OS="osx"
fi

# Symlimks
cd links 
shopt -s dotglob
for file in *
do
    ln -sf ~/dotfiles/links/$file ~/$file
done
ln -sf ~/dotfiles/$OS/.bash_aliases ~/.bash_aliases
cd ..

# Configs

# Software

## Apt

## Brew

## Curl

## Vim

