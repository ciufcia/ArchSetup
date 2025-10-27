#!/bin/bash

set -eo pipefail

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S --noconfirm --needed visual-studio-code-bin librewolf-bin foot

echo "-> scripts/apps.sh finished"
