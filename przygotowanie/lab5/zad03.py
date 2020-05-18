#!/usr/bin/python

import sys, os

for root, dirs, files in os.walk(sys.argv[1], topdown=False):
    for name in files:
        if os.path.islink(os.path.join(root, name)) and not os.access(os.path.realpath(os.path.join(root, name)), os.W_OK):
            # print(os.path.realpath(os.path.join(root, name)))
            print(os.path.join(root, name))