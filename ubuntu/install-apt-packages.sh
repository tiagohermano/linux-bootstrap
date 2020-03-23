#/bin/bash
sudo apt install snapd
if [ $? -eq 0 ]; then
  echo "Snap installation complete.";
  else
    echo "Snap installation failed.";
    exit 1;
fi;

sudo apt autoremove