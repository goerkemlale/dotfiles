#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Cardinal VCV Rack

CARDINALV=$(wget -qO- https://api.github.com/repos/DISTRHO/Cardinal/releases/latest | grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)

CARDINALURL="https://github.com/DISTRHO/Cardinal/releases/latest/download/Cardinal-linux-x86_64-$CARDINALV.tar.gz"

wget -O cardinalsetup.tar.gz "$CARDINALURL"

tar -xf cardinalsetup.tar.gz --one-top-level

cp -r ./cardinalsetup/Cardinal.lv2/ ~/.lv2/Cardinal.lv2/
cp -r ./cardinalsetup/Cardinal.vst/ ~/.vst/Cardinal.vst/
cp -r ./cardinalsetup/Cardinal.vst3/ ~/.vst3/Cardinal.vst3/
cp -r ./cardinalsetup/Cardinal.clap/ ~/.clap/Cardinal.clap/

cp -r ./cardinalsetup/CardinalFX.lv2/ ~/.lv2/CardinalFX.lv2/
cp -r ./cardinalsetup/CardinalFX.vst3/ ~/.vst3/CardinalFX.vst3/
