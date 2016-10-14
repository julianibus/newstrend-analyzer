#!/bin/bash

rm output
keyword=$1
python analyze.py $keyword
echo "\nDone."
oname="'"$keyword"'"
gnuplot -e "filename=$oname" --persist plot.gnuplot
