#!/bin/bash
awk NF $1 > text.txt
count=`cat text.txt | wc -l`
for (( i = 1; i <= $count; i++ ))
do
  a=`cat text.txt | head -n $i | tail -n 1`
  echo "$i) $a"
done
