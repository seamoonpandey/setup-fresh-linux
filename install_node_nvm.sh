#!/bin/bash

set -e

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.39.0/install.sh | bash
source ~/.profile

if nvm install v20.12.2 && npm i -g create-next-app; then
    echo "Node.js and create-next-app installed successfully."
else
    echo "Failed to install Node.js and create-next-app."
fi
