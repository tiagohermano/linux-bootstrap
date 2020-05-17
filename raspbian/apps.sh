#!/bin/bash

echo "Installing Docker..."
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi

echo "Installing dependencies..."
sudo apt-get -y install curl apt-transport-https
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get remove python-configparser

echo "Installing docker-compose..."
sudo pip3 install docker-compose

echo "Installing Raspotify..."
curl -sL https://dtcooper.github.io/raspotify/install.sh | sh
