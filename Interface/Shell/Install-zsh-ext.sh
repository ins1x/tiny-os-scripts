#!/bin/sh
# Install zsh extentions
if command -v apt-get > /dev/null; then
  sudo apt-get -y install zsh zsh-autosuggestions zsh-syntax-highlighting
elif command -v pacman > /dev/null; then
  sudo pacman -S --noconfirm zsh zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-history-substring-search
elif command -v dnf > /dev/null; then
  sudo dnf install -y zsh zsh-autosuggestions zsh-syntax-highlighting
fi