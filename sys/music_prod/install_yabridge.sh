#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Yabridge
#
tar -C ~/.local/share -xavf yabridge-x.y.z.tar.gz


mkdir yabridge
tar -zxvf yabridge* -C yabridge --strip-components=1
sudo cp -R yabridge ~/.local/share 

export PATH="$PATH:$HOME/.local/share/yabridge"
yabridgectl add "~/.vst2"
yabridgectl add "~/.vst3"
yabridgectl sync
