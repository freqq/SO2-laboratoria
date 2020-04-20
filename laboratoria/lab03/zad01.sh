#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 2 (nazwe katalogu)
if [ "$#" != "2" ]
then
	echo "Nie podales wlasciwej liczby parametrow. Wymagana liczba - 2."
	exit 1;
fi

#sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako pierwszy parametr
if [ ! -d $1 ]
then
	echo "Katalog, ktory podales jako parametr nie istnieje!";
	exit 1;
fi

directory_name=$1
modification_time=$2

find -L $1 -type f -mmin +5 -mmin -$2 -print