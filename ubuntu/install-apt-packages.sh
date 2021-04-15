#!/bin/bash

# Add GPG Keys
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - # Docker

# Add Repositories
sudo add-apt-repository ppa:lutris-team/lutris # Lutris
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" # Docker

sudo apt update
# Fill the array below with your apt essential packages 
packages=(
  "build-essential"
  "apt-transport-https"
  "ca-certificates"
  "gnupg-agent"
  "default-jdk"
  "libssl-dev"
  "ack-grep"
  "fontconfig"
  "imagemagick"
  "libmagickwand-dev"
  "software-properties-common"
  "silversearcher-ag"
  "curl"
  "ubuntu-restricted-extras"
  "ubuntu-restricted-formats"
  "ffmpeg"
  "libavcodec-extra"
  "libavcodec-extra57"
  "libavutil55"
  "libavformat57"
  "zenity"
  "lutris"
  "python3-pip"
  "python2"
  "docker-ce"
  "docker-ce-cli"
  "containerd.io"
)

for app in "${packages[@]}"; do
  echo "Instaling $app..."
  sudo apt -y install $app

  if [ $? -eq 0 ]; then
  echo "$app installation complete.";
  else
    echo "$app installation failed.";
    exit 1;
  fi;
done

# Exec docker commands as a non-root user config
sudo usermod -aG docker $USER

sudo apt autoremove
