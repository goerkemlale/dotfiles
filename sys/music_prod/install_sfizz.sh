#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Sfizz


echo 'deb http://download.opensuse.org/repositories/home:/sfztools:/sfizz/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/home:sfztools:sfizz.list
curl -fsSL https://download.opensuse.org/repositories/home:sfztools:sfizz/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_sfztools_sfizz.gpg > /dev/null
sudo apt update
sudo apt install sfizz zenity
