#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Yabridge
#
tar -C ~/.local/share -xavf yabridge-x.y.z.tar.gz
export PATH="$PATH:$HOME/.local/share/yabridge"
yabridgectl add "~/.vst2"
yabridgectl add "~/.vst3"
yabridgectl sync
