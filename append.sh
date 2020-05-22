#!/bin/bash


if test "$#" -ne 2; then
echo "wrong number of arguments"
echo "Please try your command again."
echo "Here's an example of correct usage:"
echo "bash addresslookup.sh addressbook.txt CSE"
exit 64
fi


FILENAMEARRAY=("$@")


echo ${FILENAMEARRAY[0]}
file1=${FILENAMEARRAY[0]}


echo ${FILENAMEARRAY[1]}
file2=${FILENAMEARRAY[1]}


if [ -f "$file1" ] ; then
	echo "it works"
else 
	echo "it doesn't work"
fi	

if [ -f "$file2" ] ; then
	echo "appending file1 to file2"
	cat $file1 >> $file2
else
	echo "The second filename doesn't exist"
	echo "create a new file with the contents of the first file"
	cat $file1 > $file2
fi








