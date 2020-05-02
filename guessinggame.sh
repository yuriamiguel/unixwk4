#!/usr/bin/env bash
# File: guessinggame.sh
# Author: Yuri Miguel
# ask the user to guess how many files are in current directory and 
# tell them if they are  low or high and keep asking until they
# guess the correct number
clear
let m_guesed=0
let m_file_qty=$(ls -1 | wc -l)

while [[ $m_guessed -eq 0 ]]
do
	echo -n "Can you guess how many files are in directory (enter number) ? "
	read m_input

	# verify if input is valid number
	if [[ $m_input =~ ^[0-9]+$ ]]
	then
		if [ $m_input -gt $m_file_qty ]
		then
			echo "Number Too High, please try lower..."
			echo " " 
		else
			if [ $m_input -lt $m_file_qty ]
			then
				echo "Number Too Low, please try higher..."
				echo " "
			else
				echo "Congratulations! You Guessed Right."
				break
			fi
		fi
	else
		echo "Invalid number entered"
		echo "Please Try again..."
		echo " "
	fi
done
