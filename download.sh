#!/bin/bash
rm -r $1
wget  -l 2 -r -p --html-extension --random-wait -A html,php -U Mozilla "http://$1/"
mkdir data
DATE=`date +%Y-%m-%d:%H:%M:%S`
find $1 -name '*' -exec cat {} \; | tr '[:upper:]' '[:lower:]' | tr '[".,-;-_+~`?!=)(/&%$§":#*<>]' ' ' | tr [:space:] '\n' | grep -v "^\s*$" | sort | uniq -c | sort -bnr > data/$DATE
