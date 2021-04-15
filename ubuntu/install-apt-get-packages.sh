#!/bin/bash

# Fill the array below with your apt-get essential packages
packages=(
  # "zsh"
  # "vim"
  "snapd"
  "ranger"
  "silver-searcher-ag"
  "fzf"
  "ripgrep"
  "xclip"
  "virtualbox"
  "texlive"
  "openscad"
)

for app in "${packages[@]}"; do
  echo "Instaling $app..."
  sudo apt-get -y install $app

  if [ $? -eq 0 ]; then
  echo "$app installation complete.";
  else
    echo "$app installation failed.";
    exit 1;
  fi;
done

sudo apt-get autoremove
