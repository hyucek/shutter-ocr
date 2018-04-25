#!/bin/bash
set -e

pluginDir="/usr/share/shutter/resources/system/plugins/shell/spocr/"

#rootChecks
if (( $EUID != 0 )); then
    echo "Please run as root!"
    exit
fi


#Check dependencies
for c in shutter tesseract convert zenity ; do
	command -v "$c" >/dev/null 2>&1 || { echo >&2 "Error! $c not found."; 
		exit 1; 
	}
done


mkdir -p "$pluginDir"

cp spocr "$pluginDir"
cp spocr.svg "$pluginDir"


echo "Finished."
