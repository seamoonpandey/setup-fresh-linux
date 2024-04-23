#!/bin/bash

set -e

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh installed successfully."
else
    echo "Failed to install Oh My Zsh."
fi
