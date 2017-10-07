#!/bin/bash
if [[ $# -ne "1" ]]
then
  echo "usage, enter only 1 argument"
elif [[ ! -e $1 ]]
then
  echo "error"
elif [[ -f $1 ]]
then
  chmod u+x $1
fi
