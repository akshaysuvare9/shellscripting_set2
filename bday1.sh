#!/bin/bash

dat=$(date +%d/%m)
INPUT=bday.dat
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read first_name last_name DOB comment
do
    dat1=${DOB:0:5}
    if [ "$USER" = "$first_name" ]
    then
       if [ "$dat1" = "$dat" ]
       then
       echo "Happy Birthday $USER"
       fi
    fi  
done < $INPUT
IFS=$OLDIFS
