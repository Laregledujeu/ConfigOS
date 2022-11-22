#!/bin/bash

if [[ -z $1 ]]; then
    echo "Usage: ./scanhost.sh [domain]"
    exit 1
fi
URL=$1
CRT_URL="https://crt.sh/?q=$URL"
echo "Scanning the domain"
LIST=$(curl -s $CRT_URL| grep "<TD>" | grep -v "=" | grep -v "cloudflaress" | cut -d">" -f2 | cut -d"<" -f1 | sort -u)  
echo "Proccesing with DNS... can take time..."
NUM=0
for subdomain in $LIST
do 
    IP=$(timeout 0.5s host $subdomain | grep "has address" | cut -d " " -f4)
    if [[ $IP != "" ]] && [[ $subdomain != "" ]]; then
        echo "$subdomain:$(echo $IP | sed 's/\n/ /g')"
        firefox $subdomain
        NUM=$((NUM+1))
    fi
done
echo "Number : $NUM"
