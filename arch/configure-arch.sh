#!/bin/bash
echo "Syncing pacman database..."
sudo pacman-mirrors -g
sudo pacman -Syyu

echo "Updating pacman keys"
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate manjaro
sudo pacman-key --refresh-keys

echo "Setting keyboard layout..."
setxkbmap -model abnt2 -layout br -variant ,abnt2

echo "Installing Node.js and npm..."
pacman -S nodejs npm
