#!/bin/bash

# Fill the array below with your Visual Studio Code favorite extensions
vscode_extensions=(
  "adamsome.vscode-theme-gruvbox-minor"
  "ahmadawais.shades-of-purple"
  "akamud.vscode-theme-onedark"
  "ahmadawais.shades-of-purple"
  "akamud.vscode-theme-onedark"
  "bceskavich.theme-dracula-at-night"
  "dahong.theme-bear"
  "dracula-theme.theme-dracula"
  "dsznajder.es7-react-js-snippets"
  "EditorConfig.EditorConfig"
  "EliverLara.andromeda"
  "enkia.tokyo-night"
  "esbenp.prettier-vscode"
  "hedinne.popping-and-locking-vscode"
  "James-Yu.latex-workshop"
  "jaredkent.laserwave"
  "jpoissonnier.vscode-styled-components"
  "liviuschera.noctis"
  "loilo.snazzy-light"
  "mactkg.sonic-pi"
  "marqu3s.aurora-x"
  "ms-vscode.cpptools"
  "ms-vsliveshare.vsliveshare"
  "Nur.just-black"
  "PKief.material-icon-theme"
  "ritwickdey.LiveServer"
  "rocketseat.rocketseatreactjs"
  "rocketseat.rocketseatreactnative"
  "sainnhe.gruvbox-material"
  "tobiasalthoff.atom-material-theme"
  "uloco.theme-bluloco-light"
  "vsciot-vscode.vscode-arduino"
  "vscodevim.vim"
  "zhuangtongfa.material-theme"
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
