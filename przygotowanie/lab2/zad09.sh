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

first_directory_name=$2

for file in $dir1/*
do
    if [ -f $file -a -x $file ]; then
        hardlink_exists=false
        for f in $dir2/*
        do
            if [ $f -ef $file ]; then
                hardlink_exists=true
                break
            fi
        done

        if [ $hardlink_exists = false ]; then
            ln $file $dir2
        fi

    elif [ -d $file ]; then
        ln -s "`pwd`/$file" $dir2
        for f in $file/*
        do
            # ln -s "`pwd`/$f" $dir2
        done
    fi
done
