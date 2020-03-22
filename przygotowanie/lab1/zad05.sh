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

for file in $directory_name*
do
	if [ -f $file -a -w $file ]
	then
		echo $file
		cat $file
	fi
done