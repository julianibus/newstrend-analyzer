#!/bin/bash

# download.sh
# Data mining program which downloads the input website (default depth level 2), counts the total number
# of occurrences of every word and archives the result in the data folder.
# Author:	Julian Wienand
# Usage:	$ sh download.sh [Website]
#			Example: sh download.sh "edition.cnn.com"

rm -r $1
wget  -l 2 -r -p --html-extension --random-wait -A html,php -U Mozilla "http://$1/"
mkdir data
DATE=`date +%Y-%m-%d:%H:%M:%S`
find $1 -name '*' -exec cat {} \; | tr '[:upper:]' '[:lower:]' | tr '[".,-;-_+~`?!=)(/&%$§":#*<>]' ' ' | tr [:space:] '\n' | grep -v "^\s*$" | sort | uniq -c | sort -bnr > data/$DATE
