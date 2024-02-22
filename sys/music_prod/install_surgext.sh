#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Surge XT

SURGEV=$(wget -qO- https://api.github.com/repos/surge-synthesizer/releases-xt/releases/latest | grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)


SURGEURL="https://github.com/surge-synthesizer/releases-xt/releases/download/$SURGEV/surge-xt-linux-x64-$SURGEV.deb"

wget -O ./surge.deb "$SURGEURL"

sudo dpkg -i surge.deb
