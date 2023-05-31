#!/bin/bash

SOURCE="/Volumes/$(ls /Volumes | grep "CCCOMA_X64FRE" | head -1)"
DESTINATION="/Volumes/$(ls /Volumes | grep "WINDOWS11" | head -1)"

echo "Copying '$SOURCE' to '$DESTINATION'. Purposely scaping large files (install.wim)..."
read -r -s -p $"Press enter to continue... (ctrl+C to abort)"
rsync -vha --exclude=install.wim $SOURCE/*  $DESTINATION

echo "Copying large files to '$DESTINATION'."
wimlib-imagex split $SOURCE/sources/install.wim $DESTINATION/sources/install.swm 3000
