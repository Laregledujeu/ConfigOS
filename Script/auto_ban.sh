#!/bin/bash


line="127.0.0.1  youtube.com"
notify-send test
temp=$(tail -n 1 /etc/hosts)
if [[ ${line} != ${temp} ]];
then
    echo $line >> /etc/hosts
fi

