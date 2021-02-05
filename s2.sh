#!/bin/bash

here=$(pwd) # assigns the output of pwd to varible here
echo "We are in $here" # prints pwd 

for i in {1..5}	
do
 # for i (just some variable) in range 1 to 5
 #     do the following code 	
   echo "Welcome $i times"
   # $i is how we reference the variable i 
   # defined in the loop above 
   # all variables must be referenced using $ 
   # so we know they are variables
done
 # done tells you the loop is finished 


 for i in {1..10}; do
 # for i  range 1 to 10
 #     do the following code
  if [ $(($i%2)) = 0 ]; then
   # if i modulo 2 is zero 
   # if i is even 
   echo "$i Only blue!"

  fi  # end if statement
done # done tells you the loop is finished

