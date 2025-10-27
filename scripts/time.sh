#!/bin/bash

set -eo pipefail

sudo ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
sudo hwclock --systohc