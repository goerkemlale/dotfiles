#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Yabridge

YABRIDGEV=$(wget -qO- https://api.github.com/repos/robbert-vdh/yabridge/releases/latest | grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)

YABRIDGEURL="https://github.com/robbert-vdh/yabridge/releases/download/$YABRIDGEV/yabridge-$YABRIDGEV.tar.gz"

wget -O yabridge.tar.gz "$YABRIDGEURL"

mkdir yabridge
tar -zxvf yabridge.tar.gz -C yabridge --strip-components=1
cp -R yabridge ~/.local/share

echo 'export PATH="$PATH:$HOME/.local/share/yabridge"' >> ~/.bashrc
yabridgectl add ~/.vst
yabridgectl add ~/.vst2
yabridgectl add ~/.vst3
yabridgectl sync
