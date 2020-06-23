#! /bin/bash

dir=$1 # store directory in variable
maandweek=$2 #store file in monthfolder or week folder

if [ -d "$1" ]; then # -f is for file
	# Yes
	# run through dir
	if  [ ! -d gesorteerdefotos/$2 ]; then
		mkdir gesorteerdefotos/$2
		echo "directory aangemaakt en gekozen"
	else
	echo "directory gekozen"
		exit
	fi
		
	for files in "$dir"/*
	do
		cp $files gesorteerdefotos/$2/
		echo "bestanden gekopieerd"
	done
else
	echo "dit is geen directory"
	exit
fi
