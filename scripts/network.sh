#!/bin/bash

set -eo pipefail

sudo pacman -S --noconfirm --needed networkmanager

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager