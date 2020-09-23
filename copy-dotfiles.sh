#!/bin/bash
for file in $(pwd)/dotfiles/*/; do 
  cp ./dotfiles/* ${HOME}/"$file"
done
