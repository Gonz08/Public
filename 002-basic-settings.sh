#!/bin/sh
# 
echo "############# Löschen des Users 'pi' ###############"
sudo killall -u pi
sudo deluser -remove-home pi

echo


echo "############# Docker installieren ###############"
sudo curl -fsSL https://get.docker.com | sh

sudo usermod -aG docker tj


echo "############# Docker Check ###############"
sudo docker run hello-world



echo "############# nach einem Reboot ist der user tj in Gruppe docker aktiv ###############"
wait 5
sudo reboot
