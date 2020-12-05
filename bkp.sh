#!bin/bash
if [ $1 == "--restore" ]
 then 
 echo "--restoreed"
 tar -xf $3/*bkup* -C $2
else
	FILE=$2/bkup.tar.xz
	tar -cjf bkup.tar.xz $1
	if [ -f "$FILE" ]
	then
	echo "$FILE exists."
	mv $2/bkup.tar.xz $2/bkup.tar.xz.bkp;
	else
	echo "new file created"
	mv bkup.tar.xz $2;
	fi
fi
