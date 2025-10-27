#!/bin/bash

set -eo pipefail

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --noconfirm --needed
sudo pacman -U --noconfirm --needed *.pkg.tar.zst
cd ..
rm -rf yay

yay -S --noconfirm --needed visual-studio-code-bin librewolf-bin foot