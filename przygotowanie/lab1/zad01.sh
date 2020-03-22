#!/bin/bash

directory=$1

for file in $directory/*
do
	if [ -w $file ]
	then
		mv $file $file.old	
	fi
done
