#!/bin/sh

# Apt
echo 'Apt'
sudo apt update && sudo apt upgrade -y
sudo apt list --upgradable
sudo apt dist-upgrade -y
sudo apt clean
sudo apt autoremove

echo 'Vim'
cd ~/Downloads/vim/ && git fetch && git pull
echo 'Font'
cd ~/Downloads/fonts/comic-shanns/ && git fetch && git pull
echo 'FZF'
cd ~/.fzf/ && git fetch && git pull
