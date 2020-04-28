#!/bin/bash
#This is the student records file.

File=SRecords

#We'll create the database file if it's not already there.
if	[ -e "$FILE" ]; then :
        else 
		touch SRecords
        fi


#This is the menu.

	echo '
	What would you like to do?
		1. Add Record
		2. Remove Record
		3. Update Record
		4. Search Record
	
	Please select one of the above (1-4):'

read choice 
case "$choice"
in
	1) echo "Enter Firstname, Lastname, PhoneNumber, and Email in this format: Fn Ln : Pn : E . \c"
	   read Fn Ln Pn Em
	   if [[ $Fn	$Ln	$Pn	$Em 
	   echo "$Fn	$Ln	$Pn	$Em" >> SRecords
	   sort -o SRecords SRecords
         
       









   esac   	   	   
	










