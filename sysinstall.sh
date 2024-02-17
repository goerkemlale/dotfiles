#!/bin/bash

# sources.list
sudo apt-add-repository contrib
sudo apt-add-repository non-free-firmware
sudo apt-add-repository bookworm-backports
dpkg --add-architecture i386

#Essentials
sudo apt update -y && sudo apt upgrade
sudo apt install -y curl aria2 wget git python3 python3-venv ca-certificates
sudo apt install flatpak plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install apt-fast
sudo /bin/bash -c "$(curl -sL https://git.io/vokNn)"

# GPU

apt-fast install linux-headers-amd64 nvidia-driver firmware-misc-nonfree nvidia-cuda-dev nvidia-cuda-toolkit nvidiadriver-libs:i386 libnvoptix1

# Apps
# publii

# Coding
INS_CODING="yq jq bat exa tmux"
bash ./sys/coding/install_docker.sh
bash ./sys/coding/install_asdf.sh
bash ./sys/coding/install_neovim.sh

# Creative
INS_CREATIVE="kdenlive gimp obs-studio"

# Gaming
INS_GAMING="wine lutris winetricks protontricks gamemode vkbasalt mangohud mangohud:i386 goverlay vulkan-tools"
bash ./sys/gaming/install_steam.sh
bash ./sys/gaming/install_discord.sh
flatpak install flathub net.davidotek.pupgui2

# Media
INS_MEDIA="mpv calibre"

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
