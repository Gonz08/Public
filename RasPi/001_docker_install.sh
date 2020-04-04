#!/bin/sh
# 


echo

echo "############# System Updates/Upgrades ausführen & Installation der 'unattended_upgrades' ###############"
sudo apt update -y  
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

echo "############# Zusätzliche Software' ###############"

sudo apt-get install gparted -y
echo "############# achtung ###############"
echo "############# partition fsroot erweitern mit gparted###############"
wait1 1
echo "############# achtung ###############"
echo "############# partition fsroot erweitern mit gparted###############"
wait1 1
echo "############# achtung ###############"
echo "############# partition fsroot erweitern mit gparted###############"
wait1 1
echo "############# achtung ###############"
echo "############# partition fsroot erweitern mit gparted###############"
wait1 1
echo "############# achtung ###############"
echo "############# partition fsroot erweitern mit gparted###############"
wait1 1


sudo raspi-config
sudo apt-get install synaptic -y
#sudo apt-get install libreoffice -y
sudo apt-get install gnome-disk-utility -y
sudo apt-get install nautilus -y
sudo apt-get install lshw -y
sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt install xscreensaver -y
sudo apt autoremove -y



echo "############# Docker installieren ###############"
sudo curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker tj


echo "############# Docker Check ###############"
sudo docker run hello-world

echo "############# Docker Compose ###############"
sudo apt-get install libffi-dev libssl-dev
sudo apt-get install -y python python-pip
sudo apt-get remove python-configparser
sudo pip install docker-compose 



echo "############# jetzt kann wieder in die GUI gebootet werden ###############"



echo "############# nach einem Reboot ist der user tj in Gruppe docker aktiv ###############"
sudo reboot
