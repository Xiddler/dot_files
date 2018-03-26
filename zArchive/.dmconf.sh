#!/bin/bash

# config file to install multiple applications in Ubuntu and Mint
# My favourite software

sudo apt install -y vim
sudo apt install -y sublime-text
sudo apt install -y python-pip
sudo apt install -y pinta
sudo apt install -y autokey-gtk
sudo apt install -y clipit
sudo apt install -y silversearcher-ag
sudo apt install -y git
#google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
