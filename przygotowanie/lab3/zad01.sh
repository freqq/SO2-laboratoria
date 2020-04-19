#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 1 (nazwe katalogu)
if [ "$#" != "2" ]
then
	echo "Nie podales wlasciwej liczby parametrow. Wymagana liczba - 1."
	exit 1;
fi

# Sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako pierwszy parametr
if [ ! -d $1 ]
then
	echo "Katalog, ktory podales jako pierwszy parametr nie istnieje!";
	exit 1;
fi

first_directory_name=$1

# Sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako drugi parametr
if [ ! -d $2 ]
then
	echo "Katalog, ktory podales jako drugi parametr nie istnieje!";
	exit 1;
fi

second_directory_name=$2

find $first_directory_name $second_directory_name -maxdepth 3 \( -name "*.png" -type 'f' -size -1000k -delete \) , \
\()
