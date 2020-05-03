n=$(echo "$2-1" | bc -l)

i=1             # licznik dla danego inode number
bnum=0          # wartosc poprzedniego w iteracji numeru inode
bnam=""         # nazwa poprzedniego w iteracji pliku

find "$1" -type f -links +$n -printf "%i %p\n" | sort -g | while read inum fnam; do
        if [ $bnum -gt 0 ]; then
                # jesli numerek sie powtarza, to zwiekszamy iterator
                if [ $bnum -eq $inum ]; then
                        i=$(echo $i+1 | bc -l)
                fi

                # jesli iterator osiaga porzadana wartosc, wyswietlamy
                if [ $i -ge $2 ]; then
                        echo -e "$i\t$bnam"
                fi

                # jesli numerek sie nie powtarza, resetujemy iterator
                if [ $bnum -ne $inum ]; then
                        i=1
                fi
        fi
        bnum="$inum"
        bnam="$fnam"
done