#/bin/bash

# Add GPG Keys
wget -O - -q http://deb.tableplus.com/apt.tableplus.com.gpg.key | sudo apt-key add - # TablePlus

# Add Repositories
sudo add-apt-repository ppa:lutris-team/lutris # Lutris
sudo add-apt-repository "deb [arch=amd64] https://deb.tableplus.com/debian tableplus main" # TablePlus

sudo apt update
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
  "lutris" 
  "tableplus" 
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
