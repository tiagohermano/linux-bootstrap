#!/bin/bash
sudo cp ../fonts/* ${HOME}/.fonts && fc-cache -f -v

echo "Installing Microsoft Core Fonts..."
sudo apt-get -y install ttf-mscorefonts-installer
