#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 2 (nazwy katalogow)
if [ "$#" != "1" ]
then
	echo "Nie podales wlasciwych parmetrow. Podaj nazwy katalogow."
	exit 1;
fi

#sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako parametr
if [ ! -d $1 ]
then
	echo "Katalog, ktory podales jako parametr nie istnieje!";
	exit 1;
fi

directory_name=$1
dir_path=$(realpath $directory_name)

for file in $directory_name/* 
do
    link_path=$(realpath $file)
    link_dir_path=$(dirname "$link_path")
    echo $link_path
    if [ -L $file -a "$link_dir_path" == "$dir_path" ]; then
        rm $file
    fi
done