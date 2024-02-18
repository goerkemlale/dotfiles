#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Synth1 by Ichiro Toda

wget -O synth1.zip https://daichilab.sakura.ne.jp/softsynth/Synth1V113beta3.zip
unzip synth1.zip -d ~/.vst2
