#!/bin/bash

# Install node
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs npm

# Update npm
sudo npm install -g npm

# Cssls (For css and html)
sudo npm i -g vscode-langservers-extracted

# Downloading typescript and It's server
sudo npm install -g typescript typescript-language-server

# Installing Tree Sitter
sudo npm install tree-sitter

# Change dir to home
cd 
npm init -y

