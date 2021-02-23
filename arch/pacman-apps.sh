#!/bin/bash

# Install Node.js and Npm
echo "Installing Node.js and npm..."
sudo pacman -S nodejs npm

# Install Docker
echo "Installing docker..."
sudo pacman -S docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
docker version

# Install Chrome
echo "Installing Google Chrome..."
cd ~/Downloads
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -s
sudo pacman -U google-chrome*.tar.xz

# Install Fuzzy Finder
echo "Installing Fuzzy Finder..."
sudo pacman -S fzf

echo "Installing Google Chrome..."
# Install xclip [Terminal Clipboard Utilities]
echo "Installing xclip..."
sudo pacman -S xclip
