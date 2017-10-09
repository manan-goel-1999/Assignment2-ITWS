#!/bin/bash
#awk NF $1 > text.txt
count=`awk NF $1 | wc -l`
for (( i = 1; i <= $count; i++ ))
do
  a=`awk NF $1 | head -n $i | tail -n 1`
  echo "$i) $a"
done
#rm text.txt

