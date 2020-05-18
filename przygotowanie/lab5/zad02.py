#!/usr/bin/python

import sys, os
from stat import S_IREAD, S_IRGRP, S_IROTH

NUMBER_OF_REQUIRED_ARGUMENTS = 3

if len(sys.argv) != NUMBER_OF_REQUIRED_ARGUMENTS:
    print("Given number of arguments is not okey. It should be {}".format(NUMBER_OF_REQUIRED_ARGUMENTS))
    sys.exit(0)

with open(sys.argv[2]) as f:
    lines = f.readlines()

for line in lines:
    file_name = sys.argv[1] + '/' + line
    if os.path.exists(file_name):
        if os.path.isfile(file_name):
            os.chmod(file_name, S_IREAD|S_IRGRP|S_IROTH)
        if os.path.isdir(file_name):
            print('Taki katalog juz istnieje: ' + file_name)
    else:
        open(file_name, "w")