#!/bin/sh

sudo apt update && sudo apt upgrade -y
sudo apt list --upgradable
sudo apt autoremove
