#!/bin/bash

set -eo pipefail

sudo sed -i '/^\s*#\[multilib\]/, /^\s*#Include/ s/^#//' /etc/pacman.conf

sudo pacman -Syu

sudo pacman -S --noconfirm --needed base linux linux-firmware linux-headers base-devel git openssh sudo vi vim nano 
