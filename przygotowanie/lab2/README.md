## Lista zadań:

1. Sprawdzic czy zadane dowiązanie symboliczne (argument skryptu) wskazuje na podsany obiekt. Rozwiązanie bazujące na porównaniu numerów i'node'ów jest niewystarczające. 
2. Utworzyc kopię zadanego katalogu, przy czym dowiązania symboliczne, wskazujące na obiekty w katalogu powinny w kopii wskazywac na kopię obiektów, natomiast dowiązania symboliczne wskazujące poza katalog powinny w kopii wskazywac na oryginalny obiekt. Podkatalogów nie naley kopiowac (tylko pliki regularne i dowiązania).
3. W zadanym katalogu przerobić wszystkie dowiązania symboliczne, zdefiniowane ścieżkami względnymi, na równoważne zdefiniowane ścieżkami bezwzględnymi.
4. W zadanym katalogu przerobić wszystkie dowiązania twarde (pliki regularne) na dowiązania symboliczne.
5. W zadanym katalogu ($1) znaleźć dowiązania symboliczne do obiektów w tym samym katalogu $1 i usunąć je.
6. W zadanym drzewie katalogów znaleźć katalogi zawierające mniej niż $2 (zadany parametr), a więcej lub równo $3 podkatalogi. Skrypt musi uwzględniać ostrość nierówności!
7. Skopiować zadane drzewo katalogów w zadane miejsce, uwzględniając pliki regularne, podkatalogi oraz dowiązania symboliczne. Dowiązania symboliczne w kopii powinny wskazywać na pierwotne obiekty.
8. Dany jest katalog D oraz plik zwykły P (dwa argumenty skryptu). Należy w D usunąć wszystkie dowiązania symboliczne wiszące (zepsute) a następnie zamienić wszystkie dowiązania symboliczne w D do pliku P na dowiązania twarde.
9. Dany jest katalog D (argument skryptu). Należy w nim zmienić wszystkie dowiązania symboliczne tak by były zdefiniowane ścieżką względną (i wskazywały na to same miejsce co przed zamianą). Stworzenie ścieżki względnej inaczej niż „ręcznie” jest nisko punktowane.
10. Wyświetlić nazwy symlinków i miejsca na które wskazują.
11. Napisz skrypt, który dla wszystkich plików wykonywalnych z jakiegoś katalogu (parametr wywołania skryptu) zrobi dowiązania twarde w drugim katalogu (parametr wywołania skryptu), zaś dla podkatalogów utworzy on dowiązania miękkie. 
Dodatkowo: 
a) skontroluj liczbę argumentów i uprawnienia do odpowiednich elementów systemu plików, 
b) nie twórz nowego dowiązania, jeżeli w drugim katalogu istnieje już dowiązanie twarde (wcześniej zakładaliśmy, że na pewno nie istnieje) 
c) zadbaj o to, żeby dowiązania symboliczne były stworzone względem katalogu roboczego (pwd) 
d) w przypadku podkatalogów pierwszego danego katalogu, utwórz odpowiednie dowiązania do plików z tych podkatalogów w drugim danym katalogu (załóż, że nazwy plików są unikalne)