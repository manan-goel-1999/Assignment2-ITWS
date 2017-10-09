#!/bin/bash
declare -a ones=(I II III IV V VI VII VIII IX)
declare -a tens=(X XX XXX XL L LX LXX LXXX XC)
declare -a hundreds=(C CC CCC CD D DC DCC DCCC CM)
declare -a thousands=(M MM MMM)
if [[ $1 -gt "999" ]]
then
  echo -n ${thousands[$(($(($1/1000))-1))]}
fi
num=num=$(($1%1000))
if [[ $num -gt "99" ]]
then
  echo -n ${hundreds[$(($(($num/100))-1))]}
fi
num=$(($1%100))
if [[ $num -gt "9" ]]; then
  echo -n "${tens[$(($(($num/10))-1))]}"
fi

num=$(($num%10))
if [[ $num -ne "0" ]]
then
  echo -n "${ones[$(($num-1))]}"
fi
echo ""