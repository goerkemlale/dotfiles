#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Dexed

DEXEDV=$(wget -qO- https://api.github.com/repos/asb2m10/dexed/releases/latest | grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)

DEXEDURL="https://github.com/surge-synthesizer/asb2m10/dexed/download/$DEXEDV/dexed-$DEXEDV-lnx.zip"
asb2m10/dexed/

wget -O ./dexed.zip "$DEXEDV"
unzip dexed.zip -d ~/.vst3
