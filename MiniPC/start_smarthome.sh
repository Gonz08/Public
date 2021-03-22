

#!/bin/bash

#Pakete ergänzen

echo "############################"
echo "############################"
echo "##############   Weitere Respositoris werden eingebunden ##############"

sudo apt-get update -y
sudo apt-get install curl -y
sudo apt-get install wget -y

#wget -c https://syncthing.net/release-key.txt | sudo apt-key add -
#echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list


sudo apt-get update -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
echo "############### Fish als Bash nstallieren##############"
sudo apt-get install fish -y
chsh -s /usr/bin/fish 
echo "############### installing software ##############"

sudo apt-get install mosquitto -y
sudo apt-get install mosquitto-clients -y

sudo apt-get install build-essential git -y
bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
sudo systemctl enable nodered.service
sudo systemctl start nodered.service
