#!/bin/bash

# Fill the array below with your npm favorite global packages
npm_packages=(
  "@ionic/cli"
  "create-react-app"
  "n"
  "npm"
  "yarn"
)

for package in "${npm_packages[@]}"; do
  echo "Instaling $package..."
  npm install -g $package

  if [ $? -eq 0 ]; then
  echo "$package installation complete.";
  else
    echo "$package installation failed.";
    exit 1;
  fi;
done