#!/bin/bash

set -eo pipefail

echo "Installing Hyprland and configuring..."

sudo pacman -S --noconfirm --needed hyprland hyprpolkitagent hyprpaper

hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins

hyprpm enable hyprbars

mkdir -p ~/.config/hypr
ln -sf ~/ArchSetup/configs/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
ln -sf ~/ArchSetup/configs/hypr/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
