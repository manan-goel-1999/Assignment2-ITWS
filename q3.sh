#!/bin/bash
#find *.sh > files.txt
echo "Enter String"
read string
tot="0"
count=$(echo $(find *.sh) | tr ' ' '\n'  | wc -l)
#echo $count
for (( i = 1; i <= $count; i++ ))
do
  file=$(echo $(find *.sh) | tr ' ' '\n' | head -n $i | tail -1)
 # echo $file
  counter=$(grep -o "$1" $file | wc -l)
 # echo $counter
  if [[ $counter -gt "0" ]]
  then
    tot="1"
    echo "$counter lines in $file"
  fi
done
#rm files.txt
if [[ $tot -eq "0" ]]
then
  exit 1
else
  exit 0
fi

