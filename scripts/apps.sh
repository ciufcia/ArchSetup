#!/bin/bash

set -eo pipefail

sudo pacman -S --noconfirm --needed steam

yay -S --noconfirm --needed visual-studio-code-bin librewolf-bin foot

mkdir -p ~/.config/foot
ln -sf ~/ArchSetup/configs/foot/foot.ini ~/.config/foot/foot.ini
