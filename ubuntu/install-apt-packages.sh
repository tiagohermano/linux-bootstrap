#/bin/bash

# Fill the array below with your apt essential packages 
packages=(
  "ubuntu-restricted-extras"
  "ffmpeg"
  "libavcodec-extra"
  "libavcodec-extra57"
  "libavutil55" 
  "libavformat57" 
  "zenity" 
  "zsh" 
)

for app in "${packages[@]}"; do
  echo "Instaling $app..."
  sudo apt install -y $app

  if [ $? -eq 0 ]; then
  echo "$app installation complete.";
  else
    echo "$app installation failed.";
    exit 1;
  fi;
done

sudo apt autoremove
