#!/bin/bash
# This file contains the functions for installing Wetty for Ubuntu

# commands to install yarn

sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt-get -y install yarn

# installing npm
sudo apt-get -y install npm

# updating npm for wetty
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

#installing wetty
sudo yarn global add wetty

#running wetty on port 80
sudo wetty -p 80
