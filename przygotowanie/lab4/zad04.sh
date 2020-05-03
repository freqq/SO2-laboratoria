#!/bin/bash

if [ $# != 1 ]
then
    echo "Podano nieprawidlowa liczbe parametrow. Wymagane: 1";
    exit 1;
fi

if [ ! -d $1 ]
then
    echo "Podany katalog nie istnieje";
    exit 1;
fi

find $1 -type f -printf  "%f\n" | awk -F . '{suma+=length($1)} END {print NR, suma, "srednia", suma/NR}' ;
