#!/bin/bash

for i in {0..20}
do 
    nmcli dev wifi connect 2E:29:FD:8E:B1:5C  
    if (("$?" == 0)); then
        notify-send -t 2000 "Assistant" "Wifi connected"
        exit 0
    fi
done
notify-send -t 2000 "Assistant" "Wifi connexion fail"
