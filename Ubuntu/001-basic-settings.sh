#!/bin/bash

#Pakete ergänzen

echo "############################"
echo "############################"
echo "############################"

#sudo add-apt-repository ppa:bit-team/stable -y
sudo bash -c 'echo "deb https://labs.picotech.com/debian/ picoscope main" >/etc/apt/sources.list.d/picoscope.list'
wget -O - https://labs.picotech.com/debian/dists/picoscope/Release.gpg.key | sudo apt-key add -
echo "############################"

#Update
sudo apt-get update -y
echo "############################"
#upgrade
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
echo "############################"
echo "############## User werden erstellt##############"
echo -n "ENTER Taste um fortzufahren ..." 
read input
sudo adduser  birgit && adduser birgit sudo
read user
sudo adduser  kinder 

#Programme installieren
echo "############################"
sudo snap install spotify 
sudo apt-get install picoscope -y
sudo apt-get install libreoffice libreoffice-l10n-de libreoffice-help-de -y
sudo apt-get install gparted -y
sudo apt-get install backintime-qt4 
sudo apt-get install freeplane -y
sudo apt-get install freecad freecad-doc -y
sudo apt-get install chromium -y

echo "############################"
