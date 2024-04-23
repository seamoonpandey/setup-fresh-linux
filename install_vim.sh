#!/bin/bash

set -e

if sudo apt install --assume-yes vim; then
    echo "Vim installed successfully."
else
    echo "Failed to install Vim."
fi
