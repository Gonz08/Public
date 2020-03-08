#!/bin/sh
# 
echo
echo "############# Konfiguration der Raspi:Tastatur, Bootoption... ###############"
sudo raspi-config
echo "############# System Updates/Upgrades ausführen & Installation der 'unattended_upgrades' ###############"
sudo apt update -y  
sudo apt-get upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# Bei nachträglicher installation einer Desktopumgebung
# Auswahl zwischen KDE oder Pixel = raspberrypi-ui-mods
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# sudo apt install xserver-xorg -y
# sudo apt install raspberrypi-ui-mods -y
# sudo apt install kde-plasma-desktop -y
# sudo apt install synaptic -y
echo "############# Zusätzliche Software' ###############"
sudo apt install chromium-browser -y
sudo apt-get install gparted -y
sudo apt-get install gnome-disk-utility -y
sudo apt-get install nautilus -y
sudo apt-get install lshw -y

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
