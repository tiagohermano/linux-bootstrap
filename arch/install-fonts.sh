#!/bin/bash
echo "Installing your favorite fonts..."
sudo cp ../fonts/* /usr/share/fonts/ && fc-cache -f -v
