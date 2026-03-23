#!/bin/bash
# Install bash-completion
if command -v apt-get > /dev/null; then
  sudo apt-get -y install bash-completion
elif command -v pacman > /dev/null; then
  sudo pacman -S --noconfirm bash-completion
elif command -v dnf > /dev/null; then
  sudo dnf install -y bash-completion
fi