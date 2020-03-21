#/bin/bash
echo "Installing nodejs..."
sudo apt install -y nodejs
if [ $? -eq 0 ]; then
  echo "nodejs installation complete.";
  else
    echo "nodejs installation failed.";
    exit 1;
fi;

echo "Installing npm..."
sudo apt install -y npm
if [ $? -eq 0 ]; then
  echo "npm installation complete.";
  else
    echo "npm installation failed.";
    exit 1;
fi;

echo "Fixing npm global permissions..."
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
touch ~/.profile
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
source ~/.profile
echo "npm global permissions fixed"

sudo apt install snapd
if [ $? -eq 0 ]; then
  echo "Snap installation complete.";
  else
    echo "Snap installation failed.";
    exit 1;
fi;

sudo apt autoremove