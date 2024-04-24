#!/bin/bash

set -e

echo "Starting environment setup..."

#  this is totally optional

# ./remove_snapd.sh
# echo ""

./install_basic_packages.sh
echo ""

echo ""

./setup_omz.sh

./install_vscode.sh
echo ""

./install_vim.sh
echo ""

./install_postman.sh
echo ""

./install_node_nvm.sh
echo ""

./setup_rbenv_ruby.sh
echo ""

./setup_postgresql.sh


echo "Environment setup completed successfully."
