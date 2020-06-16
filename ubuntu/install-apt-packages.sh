#/bin/bash
echo "Installing Snap package manager..."
sudo apt install snapd
if [ $? -eq 0 ]; then
  echo "Snap installation complete.";
  else
    echo "Snap installation failed.";
    exit 1;
fi;

echo "Installing media libraries..."
sudo apt install ubuntu-restricted-extras ffmpeg libavcodec-extra libavcodec-extra57 libavutil55 libavformat57 zenity -y
if [ $? -eq 0 ]; then
  echo "Media libraries installation complete.";
  else
    echo "Media libraries installation failed.";
    exit 1;
fi;

echo "Installing xclip [Terminal Clipboard Utilities]"
sudo apt-get install -y xclip
if [ $? -eq 0 ]; then
  echo "xclip installation complete.";
  else
    echo "xclip installation failed.";
    exit 1;
fi;


sudo apt autoremove
