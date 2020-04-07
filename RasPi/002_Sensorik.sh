#!/bin/sh
# 


echo

echo "############# System Updates/Upgrades ausführen & Installation der 'unattended_upgrades' ###############"
sudo apt update -y  
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

echo "############# Zusätzliche Software' ###############"
sudo apt install build-essential git
sudo apt-get install gparted -y
sudo apt-get install synaptic -y
#sudo apt-get install libreoffice -y
sudo apt-get install gnome-disk-utility -y
sudo apt-get install nautilus -y
sudo apt-get install lshw -y
sudo apt-get install curl -y
sudo apt-get install wget -y


sudo apt autoremove -y





echo "############# Node Red und MQTT installieren ###############"

sudo apt-get install nodered -y
sudo systemctl enable nodered.service

sudo apt-get install mosquitto mosquitto-clients -y
sudo systemctl enable mosquitto.service

echo "############# jetzt kann wieder in die GUI gebootet werden ###############"



echo "############# nach einem Reboot ist der user tj in Gruppe docker aktiv ###############"
sudo reboot
