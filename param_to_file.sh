#!/bin/bash

# Introduction
echo "This is a simple bash script that accepts any number of parameters and write them to a file of your choice.";

# Check if parameters are passed in the command line
if [ "$#" == "0" ]; then
	echo "No parameter was specified in the command"
	echo "Example usage: param_to_file.sh orange apple pawpaw guava"
	exit
fi

# Read filename
echo "What file would you like to save the parameters in?";
read filename

# Check if file exists, and  prompt user to input a new file name
while [ -f $filename ] 
do   
	echo "$filename exists. Please enter a new filename";
	read filename;
done

touch "$filename";

# A For loop for adding parameters to filename. This does not make use of the shift command but captures all the parameters that are passed.
for item in "$@" 
do
	echo $item >> $filename;
done
