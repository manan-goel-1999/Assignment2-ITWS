#!/bin/bash
for i in {1..10}
do
  echo "$(($i*$i))"
done

for (( i = 1; i <= 10; i++ ))
do
  echo "$(($i**$i))"
done

a=0
b=1
c=1

while [[ $c -lt "100" ]]
do
  a=$b
  b=$c
  if [[ $(($c%2)) -ne "0" ]]
  then
      echo "$c"
  fi
  c=$(($a+$b))


done
