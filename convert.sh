#!/bin/bash

i=0
for file in *.mp3; do
        str=`printf %02d $i`
        wavname="./wav/$str.wav"
        input="$(echo $file | sed 's/ /\\ /g')"
        mpg321 -w $wavname "$file"
        i=$((i+1))
done
