#!/bin/bash

set -eo pipefail

bash ./scripts/locale.sh
bash ./scripts/time.sh
bash ./scripts/network.sh
bash ./scripts/base.sh
bash ./scripts/fonts.sh
bash ./scripts/nvidia.sh
bash ./scripts/hyprland.sh
bash ./scripts/apps.sh
