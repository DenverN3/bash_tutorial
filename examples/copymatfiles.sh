#!/bin/bash 

# Allison Kunerth emailed me this use case 
# The lab has to make duplicates of one file 
# with slightly different file names 

# The file St1b1.mat need to be 
# duplicated for each participent (st1,st2,..st500) 
# and for each stage (b1,b2,b3,b4,b5)

# To do this we are going to be using 
# two nested for loops 

for participent in {1..500} ; do  #first loop for participent 
	for stage in {1..5} ; do # second loop for stage 
		filename="st${participent}b${stage}.mat" 
		cp st1b1.mat $filename # this copies st1b1.mat from the directory the script is run 
		# so st1b1.mat must be in the directory where you run the script.
	done 
done #close for loops at the end 

# if you wanted to make this take inputs 
# such as the start particpent and end participent 
# it would look like this 

# and you could run it using two inputs 
# ./copymatfiles.sh START END 
# or ./copymatfiles.sh 100 345 which would go from 100 to 345 

#for participent in {$1..$2} ; do 
#        for stage in {1..5} ; do
#                filename="st${participent}b${stage}.mat"
#                cp st1b1.mat $filename # this copies st1b1.mat from the directory the script is run
#        done
#done 

