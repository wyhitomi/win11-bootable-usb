#!/bin/bash

USB_DRIVE=$(diskutil list | grep 'external, physical' | awk '{print $1}')

diskutil list external

read -r -s -p $"Formatting $USB_DRIVE. Press enter to continue... (ctrl+C to abort)"

diskutil eraseDisk MS-DOS WINDOWS11 MBR $USB_DRIVE
