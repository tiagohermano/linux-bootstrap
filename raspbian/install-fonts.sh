#!/bin/bash
mkdir ~/.fonts
sudo cp ../fonts/* ~/.fonts && fc-cache -f -v

echo "Installing Microsoft Core Fonts..."
sudo apt-get install ttf-mscorefonts-installer
