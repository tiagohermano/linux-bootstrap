#!/bin/bash

# Fill the array below with your favorite Snapcraft apps
snap_apps=(
  "slack"
  "postman"
  "chromium"
  "code --classic"
  "gimp"
  "arduino"
  "telegram-desktop"
  "dbeaver-ce"
  "vlc"
)

echo "Enabling Snap Package manager..."
sudo apt update
sudo apt install snapd
if [ $? -eq 0 ]; then
  echo "Snap installed.";
  else
    echo "Snap installation failed.";
    exit 1;
  fi;


for app in "${snap_apps[@]}"; do
  echo "Instaling $app..."
  sudo snap install $app

  if [ $? -eq 0 ]; then
  echo "$app installation complete.";
  else
    echo "$app installation failed.";
    exit 1;
  fi;
done