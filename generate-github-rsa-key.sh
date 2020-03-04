`ssh-keygen -t rsa -b 4096 -C "tiagofhermano@gmail.com"`
`eval "$(ssh-agent -s)"`
`ssh-add ~/.ssh/id_rsa`
`echo ~/.ssh/id_rsa.pub`