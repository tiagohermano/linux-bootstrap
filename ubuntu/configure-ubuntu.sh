#/bin/bash
sudo apt update
sudo apt upgrade -y

# Enable Visual Studio Code to watch a large project for changes
sudo echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
sudo sysctl -p