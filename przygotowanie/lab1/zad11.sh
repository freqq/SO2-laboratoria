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

for file in $directory_name/*
do
    if [ -w $file ]
    then
        touch -m $file
    fi
done