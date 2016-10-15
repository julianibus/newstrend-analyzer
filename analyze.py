# analyze.py
# Core of the project. Script which scans the data folder and combines the count data of a particular keyword
# into one final data saved as "output". 
# Author:	Julian Wienand
# Usage:	$ python analyze.py [keyword]


import sys
import os

keyword = sys.argv[1]
count = 0
output = ""

for filename in sorted(os.listdir('data')):
	count = 0
	with open("data/"+filename, 'r') as f:
		for line in f:
			splits = line.split(" ")
			word = splits[len(splits)-1].rstrip()
			tcount = splits[len(splits)-2]
			if word == keyword:
				count = tcount
		with open('output', 'a') as file:
			file.write(filename + "\t" + str(count) + "\n")



			
		
		
		
		
