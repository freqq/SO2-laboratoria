# W zadanym drzewie katalogów wylistować nazwy wszystkich plików regularnych, 
# mających duże litery w środku nazwy (ale nie w ścieżce ani w ewentualnym ostatnim 
# rozszerzeniu) na postać _ i mała litera (np. noweDrogi.doc na nowe_drogi.doc). 
# Listować razem ze ścieżką (tak jak -print find’a).

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

find $1 -type f -print | awk 'BEGIN { FS = "/" }; /.*\/[[:lower:]].*[[:upper:]].*[[:lower:]]\..*/ {split($NF,a,"."); gsub(/[[:upper:]]/, "_&", a[1]); $NF=""; sub (" ", "/", $0); gsub(" ", "", $0); print $0 "/" tolower(a[1]) "." a[2]}'
