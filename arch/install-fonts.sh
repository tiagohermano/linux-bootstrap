#!/bin/sh
echo "Installing your favorite fonts...";
`sudo cp ../fonts/* ~/local/share/fonts/ && fc-cache -f -v`