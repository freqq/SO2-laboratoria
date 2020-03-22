#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 1 (nazwe katalogu)
if [ "$#" != "1" ]
then
	echo "Nie podales wlasciwego parmetru. Podaj nazwe katalogu."
	exit 1;
fi

#sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako parametr
if [ ! -d $1 ]
then
	echo "Katalog, ktory podales jako parametr nie istnieje!";
	exit 1;
fi

directory_name=$1
file_counter=0
dir_counter=0

for file in $directory_name/*
do
    if [ -x $file -a -f $file ]
    then
        let "file_counter=file_counter+1"
    elif [ -x $file -a -d $file ]
    then
        let "dir_counter=dir_counter+1"
    fi
done

echo File counter: $file_counter
echo Directory counter: $dir_counter