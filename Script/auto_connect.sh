#!/bin/bash

for i in {0..20}
do 
    nmcli dev wifi connect 2E:29:FD:8E:B1:5C > /dev/null 
    if (("$?" == 0)); then
        notify-send -t 2000 "Assistant" "Wifi connected"
        exit 0
    fi
    sleep 2
done
notify-send -t 2000 "Assistant" "Wifi connexion fail"
echo "Fin du programme"
exit 1
