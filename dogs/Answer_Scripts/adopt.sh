#!/bin/bash
# This script takes one input, number of the dog 
# and moves the entry for that dog from availableDogs.csv to adoptedDogs.csv
# then deletes the line from availableDogs.csv 


echo "adopting dog number $1" 

sed "$1!d" availableDogs.csv >> adoptedDogs.csv # '$1!d' means take everything but line $1

sed -i "$1d" availableDogs.csv # '$1d' with -i deletes the line. without -i it isn't saved change
