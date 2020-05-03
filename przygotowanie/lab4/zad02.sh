#!/bin/bash

if [ $# != 1 ]
then
    echo "Podales zla ilosc parametrow. Wymagana ilosc: 1";
    exit 1;
fi

if [ ! -f $1  ] 
then
    echo "Podany plik nie istnieje"
    exit 1;
fi

awk 'BEGIN { FS = "." }; /[0-9]{2}.[0-9]{2}.[0-9]{4}/ {gsub ("^0*", "", $2); gsub ("^0*", "", $1); print substr($3, 3, 4) "/" $2 "/" $1} /^[0-9]{2}.[0-9]{2}.[0-9]{4}/ {print $0}' $1
