#!/usr/bin/python

import sys, os
from stat import S_IREAD, S_IRGRP, S_IROTH, S_IMODE, S_IWRITE, S_IWUSR, S_IWGRP, S_IWOTH

NUMBER_OF_REQUIRED_ARGUMENTS = 3

if len(sys.argv) != NUMBER_OF_REQUIRED_ARGUMENTS:
    print("Liczba podanych argumentow sie nie zgadza. Powinno byc ich {}".format(NUMBER_OF_REQUIRED_ARGUMENTS))
    sys.exit(0)

if not os.path.isdir(sys.argv[1]):
    print("Podany katalog nie istnieje. Nazwa podanego katalogu: {}".format(sys.argv[1]))
    sys.exit(0)

if not os.path.isfile(sys.argv[2]):
    print("Podany plik z nazwami plikow nie istnieje. Nazwa podanego pliku: {}".format(sys.argv[2]))
    sys.exit(0)

with open(sys.argv[2]) as f:
    lines = f.readlines()

for line in lines:
    file_name = sys.argv[1] + '/' + line
    if os.path.exists(file_name):
        if os.path.isfile(file_name):
            current_permissions = S_IMODE(os.lstat(file_name).st_mode)
            os.chmod(file_name, current_permissions & ~S_IWUSR & ~S_IWGRP & ~S_IWOTH)
        if os.path.isdir(file_name):
            print('Taki katalog juz istnieje: ' + file_name)
    else:
        open(file_name, "w")