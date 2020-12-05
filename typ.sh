#!/bin/bash
echo -n "Enter file name : "
read file

if [ -b $file ]
then
B="It is a Block special file"
elif [ -c $file ]
then
B="It is a Character special file"
elif [ -h $file ]
then
B="It is a Soft Link"
elif [ -f $file ]
then
B="It is a Regular file"
elif [ -d $file ]
then
B="It is a Directory file"
fi
# find out if file has write permission or not
[ -w $file ] && W="Write = yes" || W="Write = No"
 
# find out if file has excute permission or not
[ -x $file ] && X="Execute = yes" || X="Execute = No"
 
# find out if file has read permission or not
[ -r $file ] && R="Read = yes" || R="Read = No"
 
echo "$B"
echo "$file permissions"
echo "$W"
echo "$R"
echo "$X"
