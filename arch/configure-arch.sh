#!/bin/bash
echo "Syncing pacman database..."
sudo pacman -Syu

echo "Updating pacman keys"
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate manjaro
sudo pacman-key --refresh-keys

echo "Updating pacman mirrors..."
sudo pacman-mirrors -g

echo "Setting keyboard layout..."
sudo localectl set-x11-keymap br abnt2

