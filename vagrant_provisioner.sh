#!/bin/bash

sudo apt-get update
sudo apt-get install -y git

# Install nvm: https://github.com/creationix/nvm
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.25.3/install.sh | bash

# install nodejs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install v0.12.2
nvm alias default v0.12.2

# link vagrant sync folder to ~/webapp
[ -d "$HOME/webapp" ] || ln -s /vagrant $HOME/webapp

# install webapp dependences
cd $HOME/webapp
npm install
npm install gulp -g
