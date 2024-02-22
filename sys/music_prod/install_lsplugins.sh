#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Dexed

LSPV=$(wget -qO- https://api.github.com/repos/lsp-plugins/lsp-plugins/releases/latest | grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)

LSPURL="https://github.com/lsp-plugins/lsp-plugins/releases/download/$LSPV/lsp-plugins-lv2-$LSPV-Linux-x86_64.tar.gz"

wget -O ./lsplugins.tar.gz "$LSPURL"

mkdir lsplugins
tar -zxvf lsplugins.tar.gz -C lsplugins --strip-components=1
sudo cp -R lsplugins/usr /usr
