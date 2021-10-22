#!/bin/bash
chmod -R +x *

if [ -z "$1" ]
then
	echo "Help info"

elif [ "${1,,}" == "ubuntu" ] || [ "${1,,}" == "elementary" || [ "${1,,}" == "mint" || [ "${1,,}" == "pop-os" ]
then
	sudo ./ubuntu/terminal-configuration.sh
	sudo ./install-node.sh
	sudo ./ubuntu/configure-ubuntu.sh
	sudo ./ubuntu/install-apt-packages.sh
	sudo ./ubuntu/install-apt-get-packages.sh
	sudo ./ubuntu/install-fonts.sh
	sudo ./configure-keychron-k2.sh

elif [ "${1,,}" == "arch" || "${1,,}" == "manjaro" ]
then
	sudo ./ubuntu/terminal-configuration.sh
	sudo ./arch/configure-arch.sh
	sudo ./arch/pacman-apps.sh
	sudo ./install-node.sh
	sudo ./arch/install-fonts.sh

elif [ "${1,,}" == "raspbian" ]
then
	sudo ./raspberry_pi_os/configure-raspbian.sh
	sudo ./raspberry_pi_os/apps.sh
	sudo ./raspberry_pi_os/install-fonts.sh

else
	echo -e "You misspelled your system, or it is not supported."
fi

./copy-dotfiles.sh
./config-git.sh
sudo ./install-oh-my-zsh.sh
sudo ./install-node.sh
sudo ./install-snap-apps.sh
./install-npm-global-packages.sh


