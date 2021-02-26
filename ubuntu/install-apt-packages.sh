#/bin/bash

# Add GPG Keys

# Add Repositories
sudo add-apt-repository ppa:lutris-team/lutris # Lutris

sudo apt update
# Fill the array below with your apt essential packages 
packages=(
  "build-essential"
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
  "ffmpeg"
  "libavcodec-extra"
  "libavcodec-extra57"
  "libavutil55"
  "libavformat57"
  "zenity"
  "zsh"
  "lutris"
  "python3-pip"
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

sudo apt autoremove
