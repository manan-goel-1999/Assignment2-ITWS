#!/bin/bash
echo "Enter Name and Birthday"
read name
read bdate
#echo "$bdate"
dateb=`echo $bdate | cut -b 6-10`
datet=`date -I | cut -b 6-10`
yearb=`echo $bdate | cut -b 1-4`
yeart=`date -I | cut -b 1-4`
if [[ $dateb == $datet ]]
then
  echo "Happy Birthday, $name.You are $(($yeart-$yearb)) years old today!"
fi
