#!/bin/bash

set -e

cd /tmp
wget -q https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz
tar -xzf postman-linux-x64.tar.gz
sudo mv Postman /opt
sudo ln -s /opt/Postman/Postman /usr/bin/postman

cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

chmod +x ~/.local/share/applications/postman.desktop
sudo update-desktop-database

if [ -x "$(command -v postman)" ]; then
    echo "Postman installed successfully."
else
    echo "Failed to install Postman."
fi
