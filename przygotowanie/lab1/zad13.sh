#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 3 (nazwe katalogu)
if [ "$#" != "3" ]
then
	echo "Nie podales wlasciwej liczby parametrow."
	exit 1;
fi

#sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako parametr
if [ ! -d $1 ]
then
	echo "Katalog, ktory podales jako parametr nie istnieje!";
	exit 1;
fi

#sprawdzenie czy istnieje plik, ktory uzytkownik podal jako parametr
if [ ! -f $2 ]
then
	echo "Plik, ktory podales jako parametr nie istnieje!";
	exit 1;
fi

directory_name=$1
file_name=$2
path_name=$3

for line in `cat $file_name`
do
	echo $line >> $path_to_file
	cat $directory_name/$line >> $path_to_file
done