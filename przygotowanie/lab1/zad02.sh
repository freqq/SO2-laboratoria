#!/bin/bash

directory_name=$1
file_name=$2

files_names=`cat $file_name`

for file in $files_names
do
	if [ ! -e $directory_name/$file ]
	then
		touch $directory_name/$file
	fi
done
