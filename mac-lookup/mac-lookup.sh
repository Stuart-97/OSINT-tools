#!/usr/bin/bash

if [ $# -ne 1 ]
then
	echo "PLEASE ENTER A VALID MAC ADDDRESS TO LOOKUP"

else
	curl https://www.macvendorlookup.com/oui.php?mac=$1 | sed -e $'s/,/\\\n/g'
fi

