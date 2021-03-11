#!/bin/bash

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

packages=(
  "zsh"
  "vim"
  "snapd"
  "kitty"
  "neovim"
  "fzf"
  "xclip"
  "virtualbox"
  "openscad"
  "xclip"
  "vscode"
)

for app in "${packages[@]}"; do
  echo "Instaling $app..."
  sudo pacman -S $app

  if [ $? -eq 0 ]; then
  echo "$app installation complete.";
  else
    echo "$app installation failed.";
    exit 1;
  fi;
done


