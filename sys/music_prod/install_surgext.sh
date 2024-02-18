#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Surge XT

SURGEV=$(wget -qO- https://api.github.com/repos/surge-synthesizer/releases-xt/releases/latest | grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)

SURGEURL="https://github.com/surge-synthesizer/releases-xt/releases/download/$SURGEV/surge-xt-linux-x64-$SURGEV.deb"

https://github.com/surge-synthesizer/releases-xt/releases/download/1.3.1/surge-xt-linux-x64-1.3.1.deb

wget -O ./surge.deb "$SURGEURL"
sudo dpkg -i surge.deb
