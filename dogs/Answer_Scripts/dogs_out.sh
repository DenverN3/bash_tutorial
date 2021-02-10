#!/bin/bash


cp dogShelter.csv dogShelter.csv.bak

adoptable=$(awk -F, '($6 == 1)' dogShelter.csv | wc -l) 

echo "There are $adoptable available dogs waiting for furever homes"

awk -F, '($6 == 1)' dogShelter.csv > adoptedDogs.csv
echo "Made adopted Dogs list"

awk -F, '($6 == 0)' dogShelter.csv | sort -t, -k5 > availableDogs.csv
echo "Made available dogs list"

head availableDogs.csv > featuredDogs.csv
echo "Made Featured Dogs list"

echo "Done"

