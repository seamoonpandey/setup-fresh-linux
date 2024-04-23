#!/bin/bash

set -e

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

if sudo apt update && sudo apt install --assume-yes code; then
    echo "Visual Studio Code installed successfully."
else
    echo "Failed to install Visual Studio Code."
fi

rm packages.microsoft.gpg
