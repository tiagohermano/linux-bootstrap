#!/bin/bash
for file in $(pwd)/dotfiles/*/; do 
  cp ./* ${HOME}/"$file"
done
