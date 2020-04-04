#!/bin/sh
# 
echo
echo "############# System Updates/Upgrades ausführen & Installation der 'unattended_upgrades' ###############"
sudo apt update -y  
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

echo "############# Zusätzliche Software' ###############"

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



sudo apt-get install synaptic -y
#sudo apt-get install libreoffice -y
sudo apt-get install gnome-disk-utility -y
sudo apt-get install nautilus -y
sudo apt-get install lshw -y
sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt install xscreensaver -y

sudo apt autoremove -y

echo "############# Anlage eines neuen Users und Passwort vergeben ' ###############"
user="tj"
echo $user
 
sudo useradd -m $user #User mit Homeverzeichnis anlegen
sudo gpasswd -a $user sudo
sudo gpasswd $user 

echo "############# Aufnahme in alle Gruppen in denen Pi Mitglied ist ' ###############"
sudo adduser $user adm
sudo adduser $user dialout
sudo adduser $user cdrom
sudo adduser $user sudo
sudo adduser $user audio
sudo adduser $user video
sudo adduser $user plugdev
sudo adduser $user games
sudo adduser $user users
sudo adduser $user input
sudo adduser $user netdev
sudo adduser $user spi
sudo adduser $user i2c
sudo adduser $user gpio

echo "############# Installation abgeschlossen, das System wird neu gestartet ###############"
sudo reboot 
