#!/bin/sh
# 
echo
echo "############# Konfiguration der Raspi:Tastatur, Bootoption... ###############"
sudo raspi-config
echo "############# System Updates/Upgrades ausführen & Installation der 'unattended_upgrades' ###############"
sudo apt update -y  
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y


echo "############# Zusätzliche Software' ###############"


sudo apt-get install synaptic -y
sudo apt-get install libreoffice -y
sudo apt-get install gparted -y
sudo apt-get install gnome-disk-utility -y
sudo apt-get install nautilus -y
sudo apt-get install lshw -y
sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt autoremove -y

echo "############# syncthing installieren ###############"

sudo apt-get install curl -y
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get install syncthing -y

echo "############# OMV installieren ###############"
wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install | sudo bash
echo "############# supervisor installieren ###############"
sudo apt-get install supervisor -y
 

echo "############# Installation abgeschlossen, das System wird neu gestartet ###############"
sudo reboot 
