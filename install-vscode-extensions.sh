#!/bin/bash

# Enable Visual Studio Code to watch a large project for changes
echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
sudo sysctl -p


# Fill the array below with your Visual Studio Code favorite extensions
vscode_extensions=(
  "acidic9.p5js-snippets"
  "ahmadawais.shades-of-purple"
  "bierner.markdown-preview-github-styles"
  "CoenraadS.bracket-pair-colorizer"
  "dbaeumer.vscode-eslint"
  "dracula-theme.theme-dracula"
  "esbenp.prettier-vscode"
  "jpoissonnier.vscode-styled-components"
  "liviuschera.noctis"
  "ms-azuretools.vscode-docker"
  "PKief.material-icon-theme"
  "ritwickdey.LiveServer"
  "rocketseat.RocketseatReactJS"
  "silvenon.mdx"
  "teabyii.ayu"
  "EditorConfig.EditorConfig"
)

echo "Installing your Visual Studio Code favorite extensions"
for extension in "${vscode_extensions[@]}"; do
  echo "Instaling $entension..."
  code --install-extension $entension --force

  if [ $? -eq 0 ]; then
  echo "$entension installation complete.";
  else
    echo "$entension installation failed.";
    exit 1;
  fi;
done
