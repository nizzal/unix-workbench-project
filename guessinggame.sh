#!/usr/bin/env bash

# get the number of files in the current directory
num_of_files=$(find . -maxdepth 1 -type f | wc -l)

echo "How many files are there in the current directory? "
	
# runs until user guesses the number 
while [[ $user_input != $num_of_files ]]
do
	read user_input

	if [[ user_input -lt num_of_files ]]
	then
		echo "too low"
	elif [[ user_input -gt num_of_files ]]
	then
		echo "too high"
	elif [[ num_of_files -eq user_input ]]
	then
		echo "Congratulations you guessed it right!"
		exit
	fi
done
