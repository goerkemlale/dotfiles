#!/bin/bash

# Install ZynAddSubFx

git clone https://github.com/zynaddsubfx/zyn-fusion-build zyn-fusion-build
cd zyn-fusion-build
make -f Makefile.linux.mk install_deps
PARALLEL=1 make -f Makefile.linux.mk MODE=release all
cd build
cd "$(find . -type d -name '*zyn-fusion*' -print -quit)"
sudo ./install-linux.sh
