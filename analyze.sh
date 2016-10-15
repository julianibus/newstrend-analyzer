#!/bin/bash

# analyze.sh
# Script that triggers the actual evaluation code that can be found implemented in analyze.py
# as well as the gnuplot script plot.gnuplot for visualization.
# Author:	Julian Wienand
# Usage:	$ sh analyze.sh [keyword]

rm output
keyword=$1
python analyze.py $keyword
echo "\nDone."
oname="'"$keyword"'"
gnuplot -e "filename=$oname" --persist plot.gnuplot
