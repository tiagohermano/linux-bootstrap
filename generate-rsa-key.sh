#!/bin/bash
echo "Generating your brand new RSA KEY..."
ssh-keygen -t rsa -b 4096 -C "tiagofhermano@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo "Here it is:"
cat ~/.ssh/id_rsa.pub