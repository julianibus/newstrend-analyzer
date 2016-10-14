#!/bin/bash

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

