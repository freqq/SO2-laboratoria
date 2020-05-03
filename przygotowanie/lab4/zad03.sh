# 4. W zadanym drzewie katalogow usun puste podkatalogi. Rowniez podkatalogi,
# ktore stana sie puste po wczesniej usunietych podkatalogach. Wskazane jest
# wykorzystanie opcji -depth komendy find

#!/bash/bin

if [ $# != 1 ]
then
    echo "Podales nieprawidlowa liczbe parametrow. Wymagane: 1";
    exit 1;
fi

if [ ! -d $1 ]
    echo "Podany katalog nie istnieje lub parametr nie jest katalogiem";
    exit 1;
fi

find $1 -type d - empty -depth | while read wynik
do
    rmdir $wynik
done