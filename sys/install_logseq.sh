#!/bin/bash

# Change Working Directory for external sh call
cd "$(dirname "$0")"

# Logseq

LOGSEQV=$(wget -qO- https://api.github.com/repos/logseq/logseq/releases/latest| grep -o '"tag_name": "[^"]*' | cut -d'"' -f4)


LOGSEQURL="https://github.com/logseq/logseq/releases/download/$LOGSEQV/Logseq-linux-x64-$LOGSEQV.AppImage"

wget -O ~/.local/bin/logseq.AppImage "$LOGSEQURL"
sudo chmod +x ~/.local/bin/logseq.AppImage

DESKTOPENTRY="~/.local/share/applications/Logseq.desktop"

echo "[Desktop Entry]" > $DESKTOPENTRY
echo "Type=Application" >> $DESKTOPENTRY
echo "Name=LogSeq" >> $DESKTOPENTRY
echo "Comment=Second brain app" >> $DESKTOPENTRY
echo "Icon=~/.local/bin/logseq.AppImage" >> $DESKTOPENTRY
echo "Exec=~/.local/bin/logseq.AppImage" >> $DESKTOPENTRY
echo "Terminal=false" >> $DESKTOPENTRY
