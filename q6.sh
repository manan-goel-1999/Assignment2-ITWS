#!/bin/bash
echo "Enter Monthly Salary"
read salary
salary=$((12*($salary)))
a=0.3000
#echo "$a"
if [[ salary -gt "300000" ]];
then
  tax=$(bc <<< "scale=4; $salary*$a")
  echo "TAX PAYMENT REQUIRED : $tax"
else
  echo "NO TAX PAYMENT REQUIRED"
fi

