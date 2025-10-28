#!/bin/bash

set -eo pipefail

sed -i '/^[[:space:]]*\(export[[:space:]]\+\)\?PS1=/d' "$HOME/.bashrc" || true
cat >> "$HOME/.bashrc" <<'BASHRC_PS1'
PS1='\[\e[1;32m\]❮\u@\h❯\[\e[0m\] \[\e[1;34m\]❮\w❯\[\e[0m\] \[\e[1;35m\]➜\[\e[0m\] '
BASHRC_PS1

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --noconfirm --needed
sudo pacman -U --noconfirm --needed *.pkg.tar.zst
cd ..
rm -rf yay

sudo pacman -S --noconfirm --needed cmake meson cpio pkg-config gcc