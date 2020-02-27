#!/bin/sh
# 
# 
echo "############# Ornder für die Installation vorbereiten ###############"
mkdir Programme
cd Programme/
mkdir supervisor


echo "############# syncthing installieren ###############"

sudo apt-get install curl
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update && sudo apt-get install syncthing

echo "############# OMV installieren ###############"
wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install | sudo bash



echo "Für die Autostartfunktion von Syncthing wird Supervisor installiert"
#sudo apt-get update
#sudo apt-get install supervisor

#sudo touch /etc/supervisor/supervisord.conf.d/syncthing.conf
#CONFIG="/etc/supervisor/conf.d/syncthing.conf"
#sudo echo "[program:syncthing]" >> $CONFIG
#sudo echo "autorestart = True" >> $CONFIG
#sudo echo "directory = /home/tj/" >> $CONFIG
#sudo echo "user = tj" >> $CONFIG
#sudo echo "command = /usr/bin/syncthing -no-browser -home="/home/tj/.config/syncthing" >> $CONFIG
#sudo echo "environment = STNORESTART="1", HOME="/home/tj" >> $CONFIG
#echo " /etc/supervisor/supervisord.conf.d/syncthing.conf "
#echo "wurde ergänz für Autostart: Syncthing"


#echo "Supervisor starten und Status abfragen"
#sudo service supervisor start
#sudo supervisorctl start syncthing
#sudo supervisorctl status syncthing
#echo "In case of troubles check the logs:"
#echo "supervisorctl tail syncthing"













#echo "############# Installation abgeschlo'ssen, das System wird neu gestartet ###############"
#sudo reboot 
