find "$1" -type l -print | while read a; do
        fn=$(readlink -e "$a")
        if [ -f "$fn" ]; then
                rm "$a"
                cp "$fn" "$a"
        fi
done
