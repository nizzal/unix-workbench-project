#!/usr/bin/env bash

re="^[0-9]+$"

# get the number of files in the current directory
num_of_files=$(ls | wc -l)

echo "How many files are there in the current directory? "

function run_guess_program {	
	# runs until user guesses the number 
	while [[ $user_input != $num_of_files ]]
	do
		read user_input
		# checking if the user input is number or not
		if ! [[ $user_input =~ $re ]]
		then
			echo "Invalid input Please enter a valid input"
		else
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
		fi
	done
}

run_guess_program
