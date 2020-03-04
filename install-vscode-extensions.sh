#!/bin/sh

vscode_extensions='./apps/vscode-extensions.txt'

while read extension;
do
  `code --install-extension $extension --force`
done < $vscode_extensions