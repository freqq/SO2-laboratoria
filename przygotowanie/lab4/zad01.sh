#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 1 (nazwe katalogu)
if [ "$#" != "1" ]
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

directory_name=$1

find $1 -type f -print | awk 'BEGIN { FS = "/" }; {split($NF,a,"."); gsub(/[[:upper:]]/, "_&", a[1]); if (substr(a[1],1,1) ~ /_/) sub(/_/, "", a[1]); $NF=""; sub (" ", "/", $0); gsub(" ", "", $0); print $0 "/" tolower(a[1]) "." a[2]}'
