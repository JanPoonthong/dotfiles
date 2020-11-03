#!/bin/sh

# Apt
echo 'Apt'
sudo apt update && sudo apt upgrade -y
sudo apt list --upgradable
sudo apt dist-upgrade -y
sudo apt clean
sudo apt autoremove
