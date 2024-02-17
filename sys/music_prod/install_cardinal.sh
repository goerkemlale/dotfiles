#!/bin/bash

# Cardinal VCV Rack

CARDINALV=$(wget -qO- https://api.github.com/repos/DISTRHO/Cardinal/releases/latest | grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)

CARDINALURL="https://github.com/DISTRHO/Cardinal/releases/latest/download/Cardinal-linux-x86_64-$CARDINALV.tar.gz"

wget "$CARDINALURL"

mkdir cardinal

#tar -xf 

cp ./Cardinal.lv2/ ~/.lv2/Cardinal.lv2/
cp ./Cardinal.vst/ ~/.vst/Cardinal.vst/
cp ./Cardinal.vst3/ ~/.vst3/Cardinal.vst3/
cp ./Cardinal.clap/ ~/.clap/Cardinal.clap/

cp ./CardinalFX.lv2/ ~/.lv2/CardinalFX.lv2/
cp ./CardinalFX.vst3/ ~/.vst3/CardinalFX.vst3/
