#!/bin/bash
set -e

pluginDir="/usr/share/shutter/resources/system/plugins/shell/spocr/"

#rootChecks
if (( $EUID != 0 )); then
    echo "Please run as root!"
    exit
fi

mkdir -p "$pluginDir"

cp printParam "$pluginDir"
cp spocr "$pluginDir"
cp spocr.svg "$pluginDir"


echo "Finished."
