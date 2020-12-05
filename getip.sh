#!/bin/bash

nam=$1


s=$(ifconfig -s | awk '{print $1}'| grep $nam 2> /dev/null)
if [ "$s" = "$nam" ]
then
ifconfig $nam | awk '{print $2}' | awk 'NR == 2 {print}'
else
echo "No Interface"
fi
