#!/bin/bash

set -eo pipefail

sudo sed -i '/^\s*#\[multilib\]/, /^\s*#Include/ s/^#//' /etc/pacman.conf

sudo pacman -Syu --noconfirm --needed

sudo pacman -S --noconfirm --needed base linux linux-firmware linux-headers networkmanager intel-ucode amd-ucode base-devel git openssh sudo vi vim nano btrfs-progs