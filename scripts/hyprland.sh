#!/bin/bash

set -eo pipefail

echo "Installing Hyprland and configuring..."

sudo pacman -S --noconfirm --needed hyprland hyprpolkitagent hyprpaper waybar wofi

hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins || true

mkdir -p ~/.config/hypr
ln -sf ~/ArchSetup/configs/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
ln -sf ~/ArchSetup/configs/hypr/hyprpaper.conf ~/.config/hypr/hyprpaper.conf

mkdir -p ~/.config/waybar
ln -sf ~/ArchSetup/configs/waybar/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/ArchSetup/configs/waybar/style.css ~/.config/waybar/style.css

mkdir -p ~/.config/wofi
ln -sf ~/ArchSetup/configs/wofi/style.css ~/.config/wofi/style.css