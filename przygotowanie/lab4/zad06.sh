find "$1" -type l -print | while read a; do
        fn=$(readlink -e "$a")
        if [ -d "$fn" ]; then
                cnt=$(ls -A1 "$a" | wc -l)
                if [ $cnt -eq 0 ]; then
                        echo "$a"
                fi
        fi
done