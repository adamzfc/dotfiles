#!/bin/sh
#for a in $(find . -name "*.xml");
#do
#        iconv -f GBK -t utf-8 <"$a" >"$a".utf8 ;
#done
#echo "Should the original files be replaced (Y/N)?"
#read replace
#if [ "$replace" == "Y" ]; then
#    echo "Original files have been replaced."
#    for a in $(find . -name "*.xml.utf8");
#        do
#            file_no_suffix=$(basename -s .xml.utf8 "$a");
#            directory=$(dirname "$a");
#            mv "$a" "$directory"/"$file_no_suffix".xml;
#        done
#else
#        echo "Original files have been converted and converted files were saved with suffix '.utf8'"
#fi
#find dir/ -type f -exec bash -c 'mv "$1" "$(iconv -f UTF8 -t SCII//TRNSLIT <<< $1)"' -- {} \;

#for file in *.$1
#do
#    iconv -f GBK -t utf8 "$file" >"$file.new" &&
#    mv -f "$file.new" "$file"
#done
iconv -f GBK -t UTF-8 "$1" > "$1.new" &&
    mv -f "$1.new" "$1"
