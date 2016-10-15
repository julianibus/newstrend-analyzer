#!/bin/bash

# main.sh
# Script which periodically triggers the data mining program "dowload.sh".
# into one final data saved as "output". 
# Author:	Julian Wienand
# Usage:	$ sh main.sh [Website]
#			Example: sh main.sh "edition.cnn.com"

echo "NEWSTREND ANALYZER"
echo "by Julian Wienand <jwienand@aol.com>"
echo "Website: \t http://$1/"
echo "Output file: \t http://$1/"
echo ""
while true
do 
	echo "Measurement: `date` ..."
    sh download.sh "$1"
	echo "\rMeasurement: `date` completed"
    sleep 180
done

