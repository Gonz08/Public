#!/bin/sh
# 
echo "############# Löschen des Users 'pi' ###############"
sudo killall -u pi
sudo deluser -remove-home pi

echo "############# Hier könnnten noch Einträge für fstab folgen###############"

curl wttr.in/Traunstein

pip install docker-compose 

echo "############# jetzt kann wieder in die GUI gebootet werden ###############"

wait 5
sudo raspi-config

echo "############# nach einem Reboot ist der user tj in Gruppe docker aktiv ###############"
sudo reboot
