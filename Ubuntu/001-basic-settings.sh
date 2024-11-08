#!/bin/bash

#Pakete ergänzen

echo "############################"
echo "############################"
echo "##############   Weitere Respositoris werden eingebunden ##############"
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

echo "############################"

#Update
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "############################"


echo "############### weitere Programme installieren##############"

echo -n "ENTER Taste um fortzufahren ..." 
read input
echo "############## >>>>##############"
sudo snap install spotify 
sudo apt install fish 
#" Fish als aktive shell definiern: 
chsh -s /usr/bin/fish 
sudo apt install nautilus-image-converter -y
sudo apt install gparted -y
sudo apt install freeplane -y

echo "############################"
