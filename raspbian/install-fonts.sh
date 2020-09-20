#!/bin/bash
mkdir ${HOME}/.fonts
sudo cp ../fonts/* ${HOME}/.fonts && fc-cache -f -v

echo "Installing Microsoft Core Fonts..."
sudo apt-get install ttf-mscorefonts-installer
