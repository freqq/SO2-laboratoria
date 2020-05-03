#!/bin/bash

export LANG=C
export LC_ALL=C

# Na wejsciu plik tekstowy. Na wyjsciu maja sie pojawiac slowa
# z tekstu pierwotnego: Wyrazy, ktore maja wewnatrz ciagi co najmniej dwa,
# kazdy zawierajacy co najmniej trzy znaki takie same z zakresu a-c

if [ $# != 1 ]
then
    echo "Podales zla liczbe parametrow. Wymagane: 1 (nazwa pliku)";
    exit 1;
fi

if [ ! -f $1 ]
then
    echo "Podany plik nie istnieje!";
    exit 1;
fi

awk 'BEGIN { RS= " " } /(aaa+|bbb+|ccc+).*(aaa+|bbb+|ccc+)/  { print }' $1;