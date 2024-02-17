#!/bin/bash
echo "If it asks, you have a file already there. Check it, or overwrite by pressing (y) "

ln -s -i ./dots/.gitconfig $HOME/.gitconfig

ln -s -i $PWD/dots/.config/nvim/init.vim $HOME/.config/nvim/init.vim
