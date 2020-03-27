#!/bin/bash
echo "Syncing pacman database..."
sudo pacman-mirrors -g
sudo pacman -Syyu

echo "Updating pacman keys..."
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate manjaro
sudo pacman-key --refresh-keys

echo "Setting keyboard layout..."
setxkbmap -model abnt2 -layout br -variant ,abnt2

echo "Enabling Visual Studio Code to watch a large project for changes..."
echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/50-max-user-watches.conf && sudo sysctl --system
