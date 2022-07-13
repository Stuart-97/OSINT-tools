#!/usr/bin/bash

# Author: Stuart_97
# This bash scripts downloads the thumbnails of the links you provide
# Usage: yt-thumbnail-downloader.sh <input file>
# Credit: All credit goes to Heath Adams AKA The Cyber Mentor as I didn't know about this technique unit I waitched the video below
# https://www.youtube.com/watch?v=2MuQcUuinE0

if [ $# -ne 1 ] 
then 
	echo "Please supply a file with a set of URLs"
	echo "Usage: ./yt-thumbnail-downloader.sh <file urls"
else
	for id in $(cat $1 | awk -F'=' '{print $NF}'); do content=$(curl -k https://i.ytimg.com/vi/$id/maxresdefault.jpg --output $id.jpg);done
fi
