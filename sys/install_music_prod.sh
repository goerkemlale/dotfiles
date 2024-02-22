#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# ardour

# VPO VSCO BPB'de bri tane

sudo mkdir ~/.vst3/
sudo mkdir ~/.lv2/
sudo mkdir ~/.vst/
sudo mkdir ~/.clap/

# ZynAddSubFX
bash ./music_prod/install_zyn.sh

# Cardinal VCV Rack
bash ./music_prod/install_cardinal.sh

# Synth1 by Ichiro Toda
bash ./music_prod/install.synth1.sh

# Surge XT
bash ./music_prod/install_surgext.sh

# Dexed
bash ./music_prod/install_dexed.sh

# LSPlugins
bash ./music_prod/install_lsplugins.sh

# Yabridge
bash ./music_prod/install_yabridge.sh

echo "Need to install Vital Synth from website. Loginware"
echo "Need to install BBC Symphony and other Spitfire LABS plugins. Loginware."
echo "Spitfire needs to be installed within Wine (installed DXVK lib). Screen unresponsible. But inside DAW GUI is bug-free"
echo "add new Yabridge paths: Spitfire"

