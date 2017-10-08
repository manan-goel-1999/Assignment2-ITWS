#!/bin/bash
df -h | awk '{print $1}' > name.txt
sed -i '/Filesystem/d' name.txt
df -h | awk '{print $5}' > usage.txt
sed -i '/Use%/d' usage.txt
#usage.txt
sed 's/%//' usage.txt > usage1.txt
counter=`df -h | wc -l`
counter=$(($counter-1))
#echo $count
for (( i = 1; i <= $counter; i++ ))
do
  name=`cat name.txt | head -n $i | tail -1`
  size=`cat usage1.txt | head -n $i | tail -1`
  if [ "$size" -lt "$1" ]
  then
    echo OK, $name, $size%
  elif [[ $size -lt "$2" && $size -gt "$1" ]]
  then
    echo Warning, $name, $size%
  else
    echo Critical, $name, $size%
  fi
  #echo $name
  #cho $size
  rm name.txt
  rm usage.txt
  rm usage1.txt
done
