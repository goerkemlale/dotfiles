#!/bin/bash

sudo apt-fast install libatomic1 libnotify4 libnspr4 libnss3 libxtst6

URL="https://discord.com/api/download?platform=linux&format=deb"

# Issue HEAD requests until the actual target is found.
# The result contains the target location, among some irrelevant stuff.
LOC=$(wget --no-verbose --method=HEAD --output-file - $URL)

# Extract the URL from the result, stripping the irrelevant stuff.
URL=$(cut "--delimiter= " --fields=4 <<< "$LOC")

# Optional: downoad the actual file.
wget -nc "$URL"

sudo dpkg -i discord*

