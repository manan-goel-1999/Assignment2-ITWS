#!/bin/bash
#ping -c "$1" www.google.com | while read endlooop; do echo "$(date): $endlooop"; done > pingfi.txt
count=$(ping -c "$1" www.google.com | while read endloop; do echo "$(date): $endloop"; done | wc -l)
#echo $count
for (( i = 1; i <= $count; i++ ))
do
  pinger=$(ping -c "$1" www.google.com | while read endloop; do echo "$(date): $endloop"; done | head -n $i | tail -n 1)
  echo "$(tput setaf $i) $pinger"
done

