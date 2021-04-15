#!/bin/bash

# Fix F Keys being always pressed on
FILE=/etc/modprobe.d/hid_apple.conf
if [[ ! test -f "$FILE"  ]]; then
  touch /etc/modprobe.d/hid_apple.conf
fi

echo "options hid_apple fnmode=2" >> /etc/modprobe.d/hid_apple.conf

sudo update-initramfs -u

