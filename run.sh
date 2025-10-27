#!/bin/bash

set -eo pipefail

echo "-> running scripts/base.sh"
bash ./scripts/base.sh

echo "-> running scripts/fonts.sh"
bash ./scripts/fonts.sh

echo "-> running scripts/nvidia.sh"
bash ./scripts/nvidia.sh

echo "-> running scripts/hyprland.sh"
bash ./scripts/hyprland.sh

echo "-> running scripts/apps.sh"
bash ./scripts/apps.sh
