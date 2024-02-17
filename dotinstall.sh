#!/bin/bash
echo "If it asks, you have a file already there. Check it, or overwrite by pressing (y) "

ln -s -i ./dots/.gitconfig $HOME/.gitconfig

ln -s -i .tmux.conf $HOME/.tmux.conf

# Tmux Ecosystem
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# NvChad
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/0xProto.tar.xz
mkdir /usr/share/fonts/truetype/0xproto
tar -xf 0xProto.tar.xz -C /usr/share/fonts/truetype/0xproto/
rm -rf ~/.config/nvim && rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
