# newstrend-analyzer

## What is newstrend-analyzer?

newstrend-analyzer is a tool that tracks the online popularity of keywords on websites.
For that it downloads a representative part of the online content and carries out word count procedures. 

## Requirements
* Python 2.*
* Bash
* Gnuplot

## How to use

1. Execute `sh main.sh edition.cnn.com` in order to periodically evaluate the content of the CNN homepage. Of course, any other domain can be handed over to the script, too.

2. Be patient and watch the program take measurements about every 5 minutes.  All measurements are stored in the "data" directory.

3. Execute `sh analyze.sh keyword` in order to create and plot a dataset documenting the popularity of the given keyword.

