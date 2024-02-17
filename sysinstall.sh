#!/bin/bash

#Essentials
sudo apt update -y && sudo apt upgrade
sudo apt install -y curl aria2 wget git python3 ca-certificates

# Install apt-fast
sudo /bin/bash -c "$(curl -sL https://git.io/vokNn)"

#Install Docker
bash ./sys/install_docker.sh

# Apps
# publii

# Coding
INS_CODING="neovim asdf"

# Creative
INS_CREATIVE="kdenlive gimp"

# Gaming
INS_GAMING="steam discord"

# Media
INS_MEDIA="mpv calibre ktorrent"

# Personal
INS_PERSONAL="keepass-xc"
bash ./sys/install.logseq.sh

# Utilities
# INS_UTIL=""

# Translation-Localization
# INS_TRAN="omegat okapi anki"


apt-fast -y install $INS_CODING $INS_CREATIVE $INS_GAMING $INS_MEDIA $INS_PERSONAL


# MUSIC PRODUCTION
bash ./sys/install_music_prod.sh
