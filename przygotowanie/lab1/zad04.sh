#!/bin/bash

directory_name=$1
counter=1

for file in `ls -S $directory_name`
do
	if [ -f $directory_name/$file ]
	then
		mv $directory_name/$file $directory_name/$file.$counter
		let "counter=counter+1"
	fi
done
