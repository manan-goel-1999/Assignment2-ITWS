#!/bin/bash
find *.sh > files.txt
echo "Enter String"
read string
tot="0"
count=`cat files.txt | wc -l`
#echo $count
for (( i = 1; i <= $count; i++ ))
do
  file=`cat files.txt | head -n $i | tail -1`
  #echo $file
  counter=`grep -o "$string" $file | wc -l`
  #echo $counter
  if [[ $counter -gt "0" ]]
  then
    tot="1"
    echo "$counter lines in $file"
  fi
done
rm files.txt
if [[ $tot -eq "0" ]]
then
  exit 1
else
  exit 0
fi

