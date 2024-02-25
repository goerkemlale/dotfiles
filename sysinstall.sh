#!/bin/bash

# sources.list
sudo apt-add-repository -y contrib
sudo apt-add-repository -y non-free-firmware
sudo apt-add-repository -y bookworm-backports
sudo dpkg --add-architecture i386

#Essentials
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl aria2 wget git python3 python3-venv ca-certificates flatpak plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install apt-fast
export PATH=$PATH:/usr/local/sbin/
sudo /bin/bash -c "$(curl -sL https://git.io/vokNn)"

# GPU

sudo apt-fast install -y linux-headers-amd64 nvidia-driver firmware-misc-nonfree nvidia-cuda-dev nvidia-cuda-toolkit nvidiadriver-libs:i386 libnvoptix1

# Apps

INS_CODING="yq jq bat exa tmux gcc clang make"
INS_CREATIVE="kdenlive gimp obs-studio"
INS_GAMING="wine lutris winetricks protontricks gamemode vkbasalt mangohud mangohud:i386 goverlay vulkan-tools"
INS_MEDIA="mpv calibre"
INS_PERSONAL="keepassxc anki"
INS_MUSIC="samplv1-lv2"

# Utilities
# INS_UTIL=""

# Translation-Localization
# INS_TRAN="omegat okapi"

sudo apt-fast -y install $INS_CODING $INS_CREATIVE $INS_GAMING $INS_MEDIA $INS_PERSONAL $INS_MUSIC

# Apps that need manual care

# Coding
sh ./sys/coding/install_docker.sh
sh ./sys/coding/install_asdf.sh
sh ./sys/coding/install_neovim.sh

# Gaming
sh ./sys/gaming/install_steam.sh
sh ./sys/gaming/install_discord.sh
flatpak install flathub net.davidotek.pupgui2

# Personal
sh ./sys/install.logseq.sh

# Music Production
sh ./sys/install_music_prod.sh

echo "Publii: Need to install manually with packaged .deb install"
