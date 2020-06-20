#!/bin/bash
for file in $(pwd)/dotfiles/*/; do 
  cp ./* ~/"$file"
done
