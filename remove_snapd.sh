#!/bin/bash

set -e

if sudo snap remove --purge snap-store; then
    echo "Snap store removed successfully."
else
    echo "Failed to remove snap store."
fi

if sudo systemctl stop snapd; then
    echo "Snapd stopped successfully."
else
    echo "Failed to stop snapd."
fi

if sudo apt remove --purge --assume-yes snapd gnome-software-plugin-snap; then
    echo "Snapd and related packages removed successfully."
else
    echo "Failed to remove snapd and related packages."
fi
