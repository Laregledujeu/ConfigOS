from os import scandir, rename
from os.path import splitext, exists
from shutil import move
from time import sleep
from json import * 



source_dir=["/home/vym/Downloads"]
list_extension="/home/vym/Script/ExtensionRepertory.json"

f=open(list_extension)
json_extension=load(f)
f.close()

def make_unique(path):
    filename, extension = splitext(path)
    counter = 1
    # * IF FILE EXISTS, ADDS NUMBER TO THE END OF THE FILENAME
    while exists(path):
        path = f"{filename} ({counter}){extension}"
        counter += 1

    return path


def move_file(dest, entry, name):
    if exists(f"{dest}/{name}"):
        unique_name = make_unique(name)
        rename(entry, unique_name)
    move(entry, dest)

def Clean(source) :
    path = source
    for entry in scandir(path) :
        if entry.is_file() :
            extension = splitext(entry.name)[-1].lower()
            if extension in json_extension.keys() : 
                move_file("/home/vym/"+json_extension[extension],entry,entry.name)
    

# ! NO NEED TO CHANGE BELOW CODE
if __name__ == "__main__":
    while True :
        for source in source_dir :
            Clean(source)
            sleep(5)
