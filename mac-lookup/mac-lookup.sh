#!/usr/bin/bash

if [ $# -ne 1 ]
then
	echo "PLEASE ENTER A VALID MAC ADDDRESS TO LOOKUP"
	echo "ACCEPTED FORMAT: 00:00:5e:00:53:af"
else
	curl https://www.macvendorlookup.com/oui.php?mac=$1 | sed -e $'s/,/\\\n/g'
fi

