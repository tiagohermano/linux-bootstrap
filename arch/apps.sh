#!/bin/bash

# Install Docker
echo "Installing docker..."
sudo pacman -S docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
docker version

