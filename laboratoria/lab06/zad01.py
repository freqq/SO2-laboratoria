#!/usr/bin/python

import os, stat, time, sys
import datetime

NUMBER_OF_REQUIRED_ARGUMENTS = 2
ONE_MINUTE = 60
FIVE_MINUTES = ONE_MINUTE * 100

if len(sys.argv) != NUMBER_OF_REQUIRED_ARGUMENTS:
    print("Liczba podanych argumentow sie nie zgadza. Powinno byc ich {}".format(NUMBER_OF_REQUIRED_ARGUMENTS))
    sys.exit(0)

if not os.path.isdir(sys.argv[1]):
    print("Podany katalog nie istnieje. Nazwa podanego katalogu: {}".format(sys.argv[1]))
    sys.exit(0)

path = sys.argv[1]

for root, dirs, files in os.walk(path, topdown=False):
    for file in files:
        file_name = os.path.join(root, file)
        if os.path.islink(file_name) and os.path.isfile(os.path.realpath(file_name)):
            stat = os.lstat(file_name)
            mod_time = stat.st_mtime
            current_time = time.time()
            if current_time - mod_time < FIVE_MINUTES and current_time - mod_time > ONE_MINUTE:
                print(file_name)