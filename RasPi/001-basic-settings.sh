#!/bin/sh
# 
echo
echo "############# System Updates/Upgrades ausführen & Installation der 'unattended_upgrades' ###############"
sudo apt update -y  
sudo apt upgrade -y
sudo apt dist-upgrade -y

echo "############# Zusätzliche Software' ###############"
sudo apt-get install fish -y
chsh -s /usr/bin/fish 

echo "############# Zusätzliche Software' ###############"

#sudo apt install gparted -y
#sudo apt-get install synaptic -y
#sudo apt-get install libreoffice -y
#sudo apt-get install gnome-disk-utility -y
#sudo apt-get install nautilus -y
#sudo apt-get install lshw -y
#sudo apt-get install curl -y
#sudo apt-get install wget -y
#sudo apt install xscreensaver -y
sudo apt autoremove -y

echo "############# syncthing installieren ###############"
sudo apt-get install curl -y
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update
sudo apt install syncthing -y



sudo systemctl enable syncthing@pi.service
sudo systemctl start syncthing@pi.service







echo "############# Installation abgeschlossen, das System wird neu gestartet ###############"
sudo reboot 
