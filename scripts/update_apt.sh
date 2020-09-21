#!/bin/sh

sudo apt update && sudo apt upgrade -y
apt list –upgradable
sudo apt autoremove
