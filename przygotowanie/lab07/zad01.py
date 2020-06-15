#!/usr/bin/python

import sys, os, re

NUMBER_OF_REQUIRED_ARGUMENTS = 2

if len(sys.argv) != NUMBER_OF_REQUIRED_ARGUMENTS:
    print("Liczba podanych argumentow sie nie zgadza. Powinno byc ich {}".format(NUMBER_OF_REQUIRED_ARGUMENTS))
    sys.exit(0)

if not os.path.isfile(sys.argv[1]):
    print("Podany plik nie istnieje. Nazwa podanego pliku: {}".format(sys.argv[2]))
    sys.exit(0)

file_var = open(sys.argv[1],'r')
file_data = file_var.readlines()

file_in_one_line = ""

for line in file_data:
    file_in_one_line += line

matches = re.findall(r"(\"{1}.*?\"{1})|(\".*?\n+.*?\")", file_in_one_line)

print(matches)