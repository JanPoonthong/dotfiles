#!/bin/sh

# Apt
echo 'Apt'
sudo apt update && sudo apt upgrade -y
sudo apt list --upgradable
sudo apt dist-upgrade -y
sudo apt clean
sudo apt autoremove

# Vim
echo 'Vim'
cd ~/Downloads/vim/ && git fetch && git pull
echo 'Font'
cd ~/Downloads/font/comic-shanns/ && git fetch && git pull
