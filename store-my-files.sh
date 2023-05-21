#! /bin/bash

set -e

# Variables
StorePath=~/Documents/.scripts/ConfigFiles

# Home directory
# ranger
cd ~/.config/ranger
cp rc.conf $StorePath
cp rifle.conf $StorePath
cp scope.sh $StorePath

# swaywm
cd ~/.config/sway
cp config $StorePath/config.sway

# waybar
cd ~/.config/waybar
cp config $StorePath/config.waybar
cp style.css $StorePath
