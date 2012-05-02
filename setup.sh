#!/bin/bash

echo Creating symbolic links to dotfile assets...

# Go home
cd ~

# Set up vim folder
if [ -d .vim ]
  then
    rm -rf .vim
    ln -s dotfiles/vim .vim
fi

# Set up vimrc
if [ -e .vimrc ]
  then 
    rm .vimrc
    ln -s dotfiles/vimrc .vimrc
fi

# Set up zshrc
if [ -e .zshrc ]
  then 
    rm .zshrc
    ln -s dotfiles/zshrc .zshrc
fi
