#!/bin/bash

first_dir=$1
second_dir=$2

ls -p $first_dir | grep -v / > first_dir_files
ls -p $second_dir | grep -v / > second_dir_files

comm -12 first_dir_files second_dir_files

rm first_dir_files second_dir_files
