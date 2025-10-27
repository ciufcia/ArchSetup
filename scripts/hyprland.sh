#!/bin/bash

set -eo pipefail

echo "Installing Hyprland and configuring..."

sudo pacman -S --noconfirm --needed hyprland hyprpolkitagent

mkdir -p ~/.config/hypr
ln -sf "$(pwd)/configs/hypr/hyprland.conf" ~/.config/hypr/hyprland.conf

echo "-> scripts/hyprland.sh finished"
