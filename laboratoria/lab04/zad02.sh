# W zadanym pliku tekstowym zastąpić ciągi spacji znakami tabulacji, 
# tak aby nie zmienił się widok tekstu wyświetlanego przez edytor 
# (należy założyć, że edytor wyświetla znaki tabulacji przez przesunięcie 
# tekstu za nim do najbliższej kolumny tabulacji. Kolumny tabulacji rozłożone są 
# równomiernie, co n znaków). Nigdy nie zastępujemy tabulatorem pojedynczych spacji.

#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 1 (nazwe katalogu)
if [ "$#" != "1" ]
then
	echo "Nie podales wlasciwej liczby parametrow. Wymagana liczba - 1."
	exit 1;
fi

# Sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako pierwszy parametr
if [ ! -f $1 ]
then
	echo "Plik, ktory podales jako pierwszy parametr nie istnieje!";
	exit 1;
fi

file_name=$1

awk '{gsub(/ {1}/, "\t", $0); print $0}' $1