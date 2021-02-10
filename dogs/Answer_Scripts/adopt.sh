#!/bin/bash

echo "adopting dog number $1" 

sed "$1!d" availableDogs.csv >> adoptedDogs.csv 

sed -i "$1d" availableDogs.csv 
