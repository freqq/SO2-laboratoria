## Lista zadań - laboratoria nr 4:

### TODO: 1, 4, 5, 10

1. W zadanym drzewie katalogów wylistować nazwy wszystkich plików regularnych, mających duże litery w środku nazwy (ale nie w ścieżce ani w ewentualnym ostatnim rozszerzeniu) na postać _ i mała litera (np. noweDrogi.doc na nowe_drogi.doc). Listować razem ze ścieżką (tak jak -print find’a).
2. W zadanym drzewie katalogow znalezc dowiazania symboliczne wskazujace na puste katalogi (Uwaga: w skrypcie nie wolno wywolywac komendy find wiecej niz raz dla kazdego drzewa, nie wolno stosowac plikow tymczasowych)
3. W zadanym drzewie katalogow usun puste podkatalogi. Rowniez podkatalogi, ktore stana sie puste po wczesniej usunietych podkatalogach. Wskazane jest wykorzystanie opcji -depth komendy find.
4. W zadanym drzewie katalogow zmodyfikowac wszytkie dowiazania twarde do plikow regularnych wewnatrz drzewa na dowiazania symboliczne.
5. W zadanym drzewie katalogow znalezc pliki regularne, do ktorych nie ma dowiazan symbolicznych w tym drzewie. (Uwaga: W skrypcie nie wolno wywolywac komendy FIND wiecej niz dla kazdego drzewa oraz nie wolno stosowac plikow tymczasowych).
6. W zadanym drzewie katalogow znalezc dowiazania symboliczne wskazujace na puste katalogi.
7. Dla zadanych dwoch drzew katalogow znalezc pliki regularne je rozniace, tzn. wystepujace tylko w jednym drzewie lub majace rozne nazwy lub sumy MD5 w jednym i drugim drzewie. Porownywane sa tylko pliki regularne majace takie same polozenie wzgledem korzeni drzew.
Uwaga: FIND mozna uzyc tylko raz dla ka�dego drzewa oraz nie mozna uzywac plikow tymczasowych.
8. W zadanym drzewie katalogow znalezc pliki regularne, do ktorych wystepuje minimum n dowiazan twardych z wewnatrz drzewa (n jest parametrem wywolania skryptu). Aby przyspieszyc wywolywanie skryptu uwzglednij fakt, ze warunkiem koniecznym (choc nie wystarczajacym) jest to, aby plik mial minimym n dowiazan twardych z dowolnych miejsc. 
9. W zadanym drzewie katalogow znalezc dowiazania symboliczne wskazujace na pliki regularne i zastapic je kopiami tych plikow.
10. W zadanym pliku tekstowym znaleźć wszystkie daty o postaci dd.mm.rrrr i zastąpić je datami postaci rr/[m]m/[d]d (nawiasy kwadratowe oznaczają wystąpienie cyfry tylko, gdy jest inna niż 0). Tekst z zastąpionymi datami wyświetlić na ekranie (nie zmieniać pliku).
