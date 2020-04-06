#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 2 (nazwe katalogu)
if [ "$#" != "1" ]
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

for file in $directory_name/*
do
    link_path=`readlink $file`
    relative_path=`realpath --relative-to="$dir" "$link_path"`
    ln -sf $relative_path $file
done
