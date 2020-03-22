#!/bin/bash

directory_name=$1

for file in $directory_name/*
do
	if [ ! -x $file ]
	then
		rm -rf $file
	fi
done
