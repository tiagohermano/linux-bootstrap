#!/bin/bash
for file in $(pwd)/dotfiles/.; do 
  cp -R $file ${HOME}/
done
