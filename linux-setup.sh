#!/bin/bash
chmod -R +x *

if [ -z "$1" ]
then
	echo "Help info"

elif [ "${1,,}" == "ubuntu" ] || [ "${1,,}" == "elementary" || [ "${1,,}" == "mint" || [ "${1,,}" == "pop-os" ]
then
	sudo ./ubuntu/configure-ubuntu.sh
	sudo ./ubuntu/install-apt-packages.sh

elif [ "${1,,}" == "arch" || "${1,,}" == "manjaro" ]
then
	sudo ./arch/configure-arch.sh

else
	echo -e "You misspelled your system, or it is not supported."
fi

./config-git.sh
sudo ./install-snap-apps.sh
./install-vscode-extensions.sh
./install-npm-global-packages.sh
./install-oh-my-zsh.sh


