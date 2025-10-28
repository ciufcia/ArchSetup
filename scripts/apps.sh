#!/bin/bash

set -eo pipefail

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --noconfirm --needed
sudo pacman -U --noconfirm --needed *.pkg.tar.zst
cd ..
rm -rf yay

yay -S --noconfirm --needed visual-studio-code-bin librewolf-bin foot

mkdir -p ~/.config/foot
ln -sf ~/ArchSetup/configs/foot/foot.ini ~/.config/foot/foot.ini

sed -i '/^[[:space:]]*\(export[[:space:]]\+\)\?PS1=/d' "$HOME/.bashrc" || true
cat >> "$HOME/.bashrc" <<'BASHRC_PS1'
PS1='\[\e[1;32m\]❮\u@\h❯\[\e[0m\] \[\e[1;34m\]❮\w❯\[\e[0m\] \[\e[1;35m\]➜\[\e[0m\] '
BASHRC_PS1
