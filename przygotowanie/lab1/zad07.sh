#!/bin/bash

directory_name=$1
file_name=$2

for file in $directory_name/*
do
	if [ ! -s $file -a -f $file ]
	then
		echo $file >> $directory_name$file_name
		rm $file		
	fi
done
