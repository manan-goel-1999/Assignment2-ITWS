#!/bin/bash
count=0
for i in $@
do
  arr[$count]=$i
  count=$(($count+1))
done

for (( i = 0; i < $#; i++ ))
do
  for (( j = $(($i+1)); j <= $#; j++ ))
  do
    if [[ $((arr[$i])) -lt $((arr[$j])) ]]
    then
      temp=$((arr[$i]))
      arr[$i]=$((arr[$j]))
      arr[$j]=$temp
    fi
  done
done
for (( i = $(($#-1)); i >= 0; i-- )); do
  echo -n $((arr[$i])) " "
done
