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

#sprawdzenie czy istnieje plik, ktory uzytkownik podal jako drugi parametr
if [ ! -f $2 ]
then
	echo "Plik, ktory podales jako parametr nie istnieje!";
	exit 1;
fi

linked_file=$2

for file in $directory_name/*
do
    if [ -L $file -a ! -e $file ]; then
        rm $file
    fi
done

for file in $directory_name/*
do
    link = $(readlink $file)
    if [ -L $file -a $(basename $link) = $linked_file ]; then
        ln -f $link $file
    fi
done