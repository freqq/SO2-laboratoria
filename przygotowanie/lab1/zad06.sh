#!/bin/bash

first_dir=$1
second_dir=$2

for file in $first_dir/*
do
	if [ -x $file -a -f $file ]
	then
		mv $file $second_dir
	fi
done
