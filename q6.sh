#!/bin/bash
echo "Enter Monthly Salary"
read salary
salary=$((12*($salary)))
a=0.3
#echo "$a"
if [[ salary -gt "300000" ]];
then
  tax=`echo $salary*$a | bc -l`
  echo "TAX PAYMENT REQUIRED : $tax"
else
  echo "NO​ ​TAX​ ​PAYMENT​ ​REQUIRED"
fi
