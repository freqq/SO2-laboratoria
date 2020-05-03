# W zadanym drzewie katalogow znalezc dowiazania symboliczne wskazujace na 
# puste katalogi
#
# Uwaga: w skrypcie nie wolno wywolywac komendy find wiecej niz raz dla kazdego
# drzewa, nie wolno stosowac plikow tymczasowych

#!/bin/bash

if [ $# != 1 ]
then
    echo "Podales zla ilosc parametrow. Wymagana ilosc: 1";
    exit 1;
fi

if [ ! -d $1  ] 
then
    echo "Podany katalog nie istnieje"
    exit 1;
fi

find $1 -type l -print | while read wynik
do
    if [ -d $wynik ]    
    then        
        if [ ! "$(ls -A $wynik)" ]
        then
            echo $wynik;
        fi
    fi
done
