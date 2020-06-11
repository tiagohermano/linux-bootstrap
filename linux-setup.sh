#!/bin/bash
chmod -R +x *

if [ -z "$1" ]
then
	echo "Help info"

elif [ "${1,,}" == "ubuntu" ] || [ "${1,,}" == "elementary" || [ "${1,,}" == "mint" || [ "${1,,}" == "pop-os" ]
then
	sudo ./ubuntu/configure-ubuntu.sh
	sudo ./ubuntu/install-apt-packages.sh
	sudo ./ubuntu/install-fonts.sh

elif [ "${1,,}" == "arch" || "${1,,}" == "manjaro" ]
then
	sudo ./arch/configure-arch.sh
	sudo ./arch/pacman-apps.sh
	sudo ./arch/install-fonts.sh

else
	echo -e "You misspelled your system, or it is not supported."
fi

cp ./dotfiles/* ~/
./config-git.sh
sudo ./install-node.sh
sudo ./install-snap-apps.sh
./install-vscode-extensions.sh
./install-npm-global-packages.sh
sudo ./install-oh-my-zsh.sh


