#!/bin/bash

set -e

sudo apt update
sudo apt install --assume-yes git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc

if rbenv install 2.7.7 && rbenv global 2.7.7 && gem install bundler rails; then
    echo "Ruby and Rails installed successfully."
else
    echo "Failed to install Ruby and Rails."
fi
