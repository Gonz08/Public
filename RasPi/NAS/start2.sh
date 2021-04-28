#!/bin/sh
# 
sudo useradd -m tj
sudo passwd tj
sudo adduser tj sudo
sudo adduser tj ssh

sudo systemctl enable syncthing@tj.service
sudo systemctl start syncthing@tj.service
