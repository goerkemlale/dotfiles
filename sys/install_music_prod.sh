#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# ardour

# tx16wx/zampler/samplv1/LinuxSampler
# bbc discovery VPO VSCO BPB'de bri tane Spitfire DSK

sudo mkdir ~/.vst3/
sudo mkdir ~/.lv2/
sudo mkdir ~/.vst/
sudo mkdir ~/.clap/

# ZynAddSubFX
sudo bash ./music_prod/install_zyn.sh

# Cardinal VCV Rack
sudo bash ./music_prod/install_cardinal.sh

# Synth1 by Ichiro Toda
sudo bash ./music_prod/install.synth1.sh

# Surge XT
sudo bash ./music_prod/install_surgext.sh

# Dexed
sudo bash ./music_prod/install_dexed.sh

# LSPlugins
sudo bash ./music_prod/install_lsplugins.sh

# Yabridge
sudo bash ./music_prod/install_yabridge.sh

echo "Need to install Vital Synth from website. Loginware"
