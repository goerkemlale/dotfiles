#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Dexed

DEXEDV=$(wget -qO- https://api.github.com/repos/asb2m10/dexed/releases/latest | grep -o '"tag_name": "[^"]*' | cut -d'"' -f4 | cut -c 2-)

DEXEDURL="https://github.com/asb2m10/dexed/releases/download/v$DEXEDV/dexed-$DEXEDV-lnx.zip"

wget -O ./dexed.zip "$DEXEDURL"
sudo unzip dexed.zip -d ~/.vst3
