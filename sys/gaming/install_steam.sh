#!/bin/bash

apt-fast install mesa-vulkan-drivers libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386
apt-fast install steam-installer

echo "CHECK STEAM INSTALLATION: /usr/share/doc/steam-installer/README.Debian"
