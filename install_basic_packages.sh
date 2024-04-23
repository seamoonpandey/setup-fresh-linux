#!/bin/bash

set -e

if sudo apt install --assume-yes curl zsh git tmux; then
    echo "Basic packages installed successfully."
else
    echo "Failed to install basic packages."
fi
