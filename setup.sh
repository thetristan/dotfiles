#!/bin/bash

echo Creating symbolic links to dotfile assets...

(

# Go home
cd ~

# Set up vim folder
[ -d .vim ] && rm -rf .vim
ln -s dotfiles/vim .vim

# Set up vimrc
[ -e .vimrc ] && rm .vimrc
ln -s dotfiles/vimrc .vimrc

# Set up gvimrc
[ -e .gvimrc ] && rm .gvimrc
ln -s dotfiles/gvimrc .gvimrc

# Set up zshrc
[ -e .zshrc ] && rm .zshrc
ln -s dotfiles/zshrc .zshrc

# Tmux configuration
[ -e .tmux.conf ] && rm .tmux.conf
ln -s dotfiles/tmux.conf .tmux.conf

# dotjs
[ -d .js ] && rm -rf .js
ln -s dotfiles/js .js

)
