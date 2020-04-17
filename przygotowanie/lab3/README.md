## Lista zadań - laboratoria nr 3:

1. Dane są drzewa katalogowe D1 oraz D2 (argument skryptu).
   Należy w D1 oraz D2:
   1. Usunąć wszystkie pliki .png (nie muszą być to prawdziwe png, liczy się rozszerzenie) o rozmiarze mniejszym niż 200 bajtów (2 p).
   2. Znaleźć katalogi, do których: właściciel pliku ma prawo odczytu 
 lub inni nie mają prawa wykonania (4 p).
   3. Znaleźć linki symboliczne do plików innych niż zwykłe (2 p).
   4. Wypisać dla plików zwykłych: numer i-noda, rozmiar pliku oraz 
 datę ostatniej modyfikacji (3 p).

 Wszystkie 4 podpunkty powinny być w jednym findzie. 
 Skrypt będzie wtedy zawierał (oprócz standardowego sprawdzania 
 argumentów) tylko dwie rozbudowane komendy find (jedna dla szukania 
 w D1 oraz jedna dla szukania w D2).

 Dodatkowe punkty za:
 a) ograniczenie wyszukiwania do 3 poziomów podkatalogów (1 p).
 b) zrobienie wszystko jednym findem (1 p).


2. Napisz skrypt, który dla podanego miejsca w systemie plików 
(parametr wykonania skryptu) oraz wszystkich jego podkatalogów,
wypisze ścieżkę, nazwę użytkownika, grupy i uprawnienia
do plików zwykłych, których formalnym właścicielem nie jest aktualny użytkownik (whoami). 
ex: /tmp

3. Napisz skrypt, który przeszuka zadane miejsce w systemie plików 
(parametr wywołania skryptu), o ile ono istnieje, i wyświetli
wszystkie istniejące w tym miejscu (i jego ewentualnych podkatalogach)
dowiązania twarde i miękkie do wskazanego pliku (parametr wywołania skryptu).

4. Napisz skrypt, który dla wskazanego miejsca w systemie plików (parametr wywołania skryptu):
    1. wyszuka i zliczy (wc) ile jest plików wykonywalnych (dla podmiotu uruchamiającego skrypt)
    2. wyświetli ścieżki do skryptów (wykonywalnych plików tekstowych – file -i)
    3. sprawdzi, czy podany w nagłówku skryptu (head) interpreter (zapis #!/ścieżka) istnieje w lokalnym systemie
    4. wyświetli ostrzeżenie w przypadku plików wykonywalnych, które były zmodyfikowane w ciągu ostatniego tygodnia