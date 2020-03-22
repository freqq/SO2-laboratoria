#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 2 (nazwy katalogow)
if [ "$#" != "2" ]
then
	echo "Nie podales wlasciwych parmetrow. Podaj nazwy katalogow."
	exit 1;
fi

#sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako pierwszy parametr
if [ ! -d $1 ]
then
	echo "Katalog, ktory podales jako pierwszy parametr nie istnieje!";
	exit 1;
fi

#sprawdzenie czy istnieje katalog, ktory uzytkownik podal jako drugi parametr
if [ ! -d $2 ]
then
	echo "Katalog, ktory podales jako drugi parametr nie istnieje!";
	exit 1;
fi

first_dir=$1
second_dir=$2

ls -p  $first_dir | grep -v / > first_content
ls -p  $second_dir | grep -v / > second_content

for file in `comm -12 first_content second_content`
do
    rm $first_dir/$file
done

rm first_content second_content