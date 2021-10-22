#!/bin/bash

# Fill the array below with your favorite Snapcraft apps
snap_apps=(
  "postman"
  "chromium"
  "gimp"
  "arduino"
  "telegram-desktop"
  "dbeaver-ce"
  "vlc"
)

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
