#!/bin/bash

# Sprawdzanie czy uzytkownik podal wlasciwa liczbe parametrow - 2 (nazwy katalogow)
if [ "$#" != "1" ]
then
	echo "Nie podales wlasciwych parmetrow. Podaj nazwy katalogow."
	exit 1;
fi

