#!/usr/bin/bash

if [ $# -ne 1 ]
then
	echo "ENTER A VALID IP ADDRESS TO LOOKUP"
else
	curl ipinfo.io/$1
fi
