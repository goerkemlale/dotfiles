#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Logseq

LOGSEQV=$(wget -qO- https://api.github.com/repos/logseq/logseq/releases/latest| grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)


LOGSEQURL="https://github.com/logseq/logseq/releases/download/$LOGSEQV/Logseq-linux-x64-$LOGSEQV.AppImage"

wget "$LOGSEQURL"

