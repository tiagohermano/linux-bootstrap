#!/bin/sh

# INSTALL APPS
snap_apps='./apps/snap.txt'

while read app;
do
  `sudo snap install $app`
done < $snap_apps

# OHMYZSH
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`