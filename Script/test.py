from os.path import expanduser


filepath = "~/Script/sentences_list.txt"
with open(expanduser(filepath), "r", encoding="utf-8") as f : 
    print(f.readlines())
