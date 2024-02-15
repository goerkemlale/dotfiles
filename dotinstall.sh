#!/bin/bash
echo "If it asks, you have a file already there. Check it, or overwrite by pressing (y) "

ln -s -i ./userhome/.gitconfig $HOME/.gitconfig

ln -s -i $PWD/userhome/.config/nvim/init.vim $HOME/.config/nvim/init.vim
