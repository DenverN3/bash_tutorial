#!/bin/bash


cp catShelter.csv catShelter.csv.bak

adoptable=$(awk -F, '($4 == 1)' catShelter.csv | wc -l) 

echo "There are $adoptable available cats waiting for furever homes"

awk -F, '($4 == 1)' catShelter.csv > adoptedCats.csv
echo "Made adopted cats list"

awk -F, '($4 == 0)' catShelter.csv | sort -t, -k1 > availableCats.csv
echo "Made available cats list"

head availableCats.csv > featuredCats.csv
echo "Made Featured Cats list"

echo "Done"

