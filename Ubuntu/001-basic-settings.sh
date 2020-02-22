#!/bin/bash

#Pakete ergänzen

echo "############################"
echo "############################"
echo "############################"

sudo add-apt-repository ppa:bit-team/stable -y


echo "############################"

#Update
sudo apt-get update -y
echo "############################"
#upgrade
sudo apt-get upgrade -y
echo "############################"
sudo apt-get dist-upgrade -y
echo "############################"
#Programme installieren
echo "############################"
sudo snap install spotify 
echo "############################"
sudo apt-get install gparted -y
echo "############################"
sudo apt-get install backintime-qt4 
echo "############################"
sudo apt-get install freeplane -y
