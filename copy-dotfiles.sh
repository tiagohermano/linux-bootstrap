#!/bin/bash
for file in ./dotfiles/*/; do 
  cp ./* ~/"$file"
done
