#!/bin/bash


directory_path="./directory_list"
file_path="./file_list"

echo -e "Les répertoires sauvegardés : \n"

while read -r line
do
	echo $line
	cp -r $line .  
done < "$directory_path"

echo -e "\nLes fichiers sauvegardés : \n"

while read -r line
do
  	echo "$line"
	cp $line ./Files
done < "$file_path"


currentdate=$(date)
git add . && git commit && git push -q && notify-send "Save Finish"
#git add . && git commit -m "$currentdate" && git push && echo -e "\nSave Finish\n"
