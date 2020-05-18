## Lista zadań - laboratoria nr 5:

1. Dla zadanego dowiązania symbolicznego zweryfikuj, czy cała ścieżka do obiektu przez niego wskazanego znajduje 
   się w obrębie zadanego drzewa katalogów (wszystkie pośrednie katalogi i dowiązania występujące w ścieżce). 
   Uwaga: weryfikacja ma sprawdzić ścieżkę zapisaną w dowiązaniu, a nie przerobioną do postaci kanonicznej 
   (bo to nie jest to samo).
2. W zadanym katalogu utwórz pliki regularne o nazwach pokrywających się z kolejnymi liniami w zadanym pliku 
   (tworzyc rowniez pliki ze spacjami w nazwie). Jezeli plik o takiej nazwie juz istnieje, to zmien prawa jego dostepu 
   na 'read only'. Jezeli obiekt o takiej nazwie juz istnieje, a nie jest plikiem regularnym, to wyswietl ostrzezenie 
   i nie zmieniaj go.
3. W zadanym katalogu przerób wszystkie dowiązania symboliczne wskazujące na pliki regularne (do których wykonujący 
   skrypt nie ma prawa zapisu) znajdujące się w tym katalogu tak, aby sciezki dowiazania mialy postac ./plik.