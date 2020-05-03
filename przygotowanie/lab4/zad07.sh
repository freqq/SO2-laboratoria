find $1 $2 -type f -printf "%f\n" | sort | while read file
do
   if [ "$pierwszy" != "$file" ] ; then 
      echo "$file" 
      pierwszy=$file
   fi
done

lub

find "$1" "$2" -type f -exec md5sum '{}' \; | while read md5s fnam; do
        bnam=$(basename "$fnam")
        echo -e "$fnam\t$md5s\t$bnam"
done | sort -k 2,3 | uniq -u -f 1 | while read a b c; do
        echo "$a"
done