#!/usr/env/bin bash

# get the number of files in the current directory
num_of_files=$(find . -type f | wc -l)

# runs until user guesses the number 
while [[ $user_input != $num_of_files ]]
do
	echo "How many files are there in the current directory? "

	read user_input

	echo "Entered Input: $user_input"

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
