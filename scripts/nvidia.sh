#!/bin/bash

set -eo pipefail

sudo pacman -S --noconfirm --needed nvidia-open-dkms nvidia-utils lib32-nvidia-utils egl-wayland libva-nvidia-driver xorg-xwayland wayland-protocols

sudo mkdir -p /etc/modprobe.d

echo "options nvidia_drm modeset=1" | sudo tee /etc/modprobe.d/nvidia.conf

sudo sed -i '/^MODULES/c\MODULES=(i915 nvidia nvidia_modeset nvidia_uvm nvidia_drm)' /etc/mkinitcpio.conf

if sudo mkinitcpio -P; then
	echo "mkinitcpio: success"
else
	rc=$?
	echo "mkinitcpio: failed with exit code ${rc} — check /var/log/mkinitcpio or the output above; continuing" >&2
fi

echo "-> scripts/nvidia.sh finished"
