#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 2 (nazwy katalogow)
if [ "$#" != "2" ]
then
	echo "Nie podales wlasciwej liczby argumentow."
	exit 1;
fi

#sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako pierwszy parametr
if [ ! -d $1 ]
then
	echo "Katalog, ktory podales jako pierwszy parametr nie istnieje!";
	exit 1;
fi

#sprawdzenie czy istnieje plik, ktory uzytkownik podal jako drugi parametr
if [ ! -f $2 ]
then
	echo "Plik, ktory podales jako drugi parametr nie istnieje!";
	exit 1;
fi

directory_name=$1
file_name=$2

ls $directory_name > dir_content
comm -23 dir_content $file_name
rm dir_content