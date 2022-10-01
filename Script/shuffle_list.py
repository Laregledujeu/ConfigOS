import random as rd 
from os.path import expanduser 


filepath = "~/Script/sentences_list.txt"
with open(expanduser(filepath),"r", encoding="utf-8") as f : 
    liste = f.readlines()
    rd.shuffle(liste)

with open(expanduser(filepath), "w", encoding="utf-8") as f : 
    f.writelines(liste)

