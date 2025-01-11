#!/bin/bash
echo "Game Starts"
sleep 1
echo "Getting Setup Ready............"
sleep 2
read -p "What is Your Name  - " name
read -p "What is Your Guess Number (0-2)   - " Ournum
echo "Sending Output........"
sleep 2
machineGuess=$(($RANDOM % 3))
echo Calculating results....... 
sleep 2
echo Getting Results.....
sleep 1
if [ $Ournum -eq $machineGuess ]; then 
	figlet "You Win $name" 
	echo "============================"
	sleep 2
	echo "Machine Guess --- $machineGuess " 
	echo "Your Guess --- $Ournum" 
	exit 0
elif [ $Ournum -ne $machineGuess ]; then 
	figlet "You Die $name" 
	echo "==============================" 
	sleep 2
	echo "Machine Guess --- $machineGuess " 
	echo "Your Guess --- $Ournum"
	exit 1 
else 
	echo "Invalid Input $name"
fi






