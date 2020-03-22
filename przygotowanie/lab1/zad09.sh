#!/bin/bash

# Sprawdzenie czy uzytkownik podal wlasciwa liczbe parametrow - 1 (nazwa katalogu)
if [ "$#" != "1" ]
then
	echo "Nie podales wlasciwego parametru. Podaj nazwe katalogu, ktory chcesz wyczyscic."
	exit 1;
fi

directory_name=$1

# Sprawdzenie czy istnieje katalog, ktory zostal podany przez uzytkownika jako parametr
if [ ! -d $directory_name ]
then
	echo "Katalog, ktory podales jako parametr nie istnieje!"	
	exit 1;
fi

for dir in `ls $directory_name`
do
	if [ -d $directory_name/$dir ]
	then
		mv $directory_name/$dir/* $directory_name/
		rm -rf $directory_name/$dir
	fi
done
