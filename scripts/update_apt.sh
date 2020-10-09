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
# Font
echo 'Font'
cd ~/Downloads/fonts/comic-shanns/ && git fetch && git pull
# FZF
echo 'FZF'
cd ~/.fzf/ && git fetch && git pull
