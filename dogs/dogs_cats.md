# Welcome to the BASH Dog Shelter 

You are a new volunteer at the BASH Dog Shelter. 
BASH Dog Shelter has a lot of dogs and not very much money. 
The previous volunteers made a spreadsheet of the dogs. 
But they can't afford a license for Microsoft Excel
or any apple products
only open source Linux software like BASH. :C


Now you have to manipulate this database to get 
the dogs adopted. 

## Open the file 
First open up the database and take a look at the format. 

`nano dogShelter.csv` 

What is the organization of the columns? 

## Make a Backup
Before we start manipulating the data set. Make a copy of it 

`cp dogShelter.csv dogShelter.csv.bak` 

`*.bak` is what many users use to inidicate backups but it could
be any name. 

If at any point you want to go back you just reverse the two 
inputs in the command above. 

## Adoptable 
We don't even know how many dogs have been adopted! The last column 
'Status' (column 6) tells us if they have been adopted. 
A `1` indicates they have been adopted!
A `0` indicates they haven't been adopted.


Try the command 
`awk -F "," '( $6 == 1)'`

`awk` filters text. The `-F,` marker tells it that the Field seperator is commas.

`($6 == 1)` looks at the 6th column and picks the one equal to 1 only.


Now, pipe that into `wc` to count the adopted dogs. Use this command in the 
prompt. 

`awk -F, '($6 == 1)' dogShelter.csv | wc -l`

Try using the same command above (slightly modified) to count the dogs who
are still available (0). 


## Make two spread sheets 

Use the `awk` command above and `>` to make two spreadsheets. One of adoptedDogs.csv and availableDogs.csv. 

`awk -F, '($6 == 1)' dogShelter.csv > adoptedDogs.csv`

`awk -F, '($6 == 0)' dogShelter.csv > availableDogs.csv`

## Sort the availableDogs file 

One of the columns is the date they were brought into the shelter. We want the dogs who have been in 
the shelter the longest to get adopted first. 


We can sort the file using 
`sort -t, -nk5 availableDogs.csv`

`-t,` is the same as `-F,` in awk, it tells sort that it is seperate by commas. 

`-nk4` is *n*umeric, *k*ey 5, meaning sort by number and go to column 4. 

Take that output and put it into a file. You can combine the `awk` command and `sort` and `>` to do this all in one step. 

## Featured dogs 

Finally we want to take the dogs that have been in the shelter longest 
as Featured Dogs to do this pipe the sort command into `head`. 

If you need help, check `man head`. 

# You let the Dogs Out! 

After hearing about the great work you did as a volunteer, the BASH International Cat Shelter 
also wants your help. You can't say no to those little toe beans. 

Open the file catShelter.csv. Cats and dogs are different and the files are different formats! 

Copy the file dogs_out.sh which contains the code above and make a file called herd_cats.sh 
to do all the steps you did in this lesson. *You will have to change the code to work 
for the catShelter.csv file (columns have changed).*

- Make a backup 
- Count the adopted/available cats 
- Make two files availableCats.csv and adoptedCats.csv
- Sort availableCats.csv by date
- Use `head` to make a new file called featuredCats.csv

# Ready for a forever family  

Finally we will make a script to adopt dogs or cats. We consider them adopted when 
they are moved from available to adopted files. 

Create a new script called adopt.sh.

`nano adopt.sh` 

This script will move one line from the available to adopted .csv files. 

It should have one input using `$1` that is the line number of that dogs entry 
in the available dogs file. 

You will use `sed` and `>>` to put the output of `sed` into a file. 

Then delete the line from the avilable dogs file. 


 
