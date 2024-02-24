#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Sfizz

SFIZZV=Debian_12

echo 'deb http://download.opensuse.org/repositories/home:/sfztools:/sfizz/$SFIZZV/ /' | sudo tee /etc/apt/sources.list.d/home:sfztools:sfizz.list
curl -fsSL https://download.opensuse.org/repositories/home:sfztools:sfizz/$SFIZZV/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_sfztools_sfizz.gpg > /dev/null
sudo apt update
sudo apt install sfizz zenity
