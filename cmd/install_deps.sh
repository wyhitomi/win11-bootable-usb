#!/bin/bash

if ! command -v brew &> /dev/null; then
    echo "brew could not be found.  Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
else
    echo "brew is already installed"
fi

if ! command -v wimlib-imagex &> /dev/null; then
    echo "wimlib-imagex could not be found.  Installing..."
    brew install wimlib
else
    echo "wimlib-imagex is already installed"
fi
