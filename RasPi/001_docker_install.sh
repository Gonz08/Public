#!/bin/sh
# 


echo


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


sudo raspi-config

echo "############# nach einem Reboot ist der user tj in Gruppe docker aktiv ###############"
sudo reboot
