#!/bin/sh
# 
# Es wird ein Backup der InfluxDB im Ordner mit heutigem Datum abgelegt und das Backup von vor 5 Tage gelöscht

#mkdir /home/pi/Test
#influxd backup -portable /home/pi/BackUp-RasPi3/
#mkdir /home/pi/BackUp-RasPi3/$(date  +%Y%m%d)
mkdir /home/pi/BackUp-RasPi3/$(date  +%Y%m%d)
influxd backup -portable /home/pi/BackUp-RasPi3/$(date   +%Y%m%d)
rm -r /home/pi/BackUp-RasPi3/$(date --date='5 days ago'  +%Y%m%d)

# Cronjob wie folgt aktivieren:
# In Shell folgender Befehl eingeben
# crontab -e
# am Ende der Tabelle folgende Zeile ergänzen
# 0 3 * * * bash /home/pi/BackUp-RasPi3/Backup-Skript.sh
# Bedeutung: Wenn die Minute = 0 und die Stunde = 3 ist, wird die Bash-Datei ausgeführt, sprich Nachts um 3:00h
