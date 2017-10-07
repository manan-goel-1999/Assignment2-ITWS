#!/bin/bash
ping -c "$1" www.google.com | while read endlooop; do echo "$(date): $endlooop"; done > pingfi.txt
count=`cat pingfi.txt | wc -l`
for (( i = 1; i <= $count; i++ ))
do
  pinger=`cat pingfi.txt | head -n $i | tail -n 1`
  echo "$(tput setaf $i) $pinger"
done
rm pingfi.txt
