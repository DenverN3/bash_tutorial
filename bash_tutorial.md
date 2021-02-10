<!-- fg=green bg=black -->
# Intro to Bash Scripting 

## Hosted by WiHPC and IgDEAS 

---
<!-- fg=green bg=black -->
## What Bash?

Bash is a programming language.
Bourne Again SHell written by Brian Fox in 1989.

A shell is what interprets the commands in the commandline and runs them.

---
<!-- fg=green bg=black -->
## Why Bash? 

All the commands we learned

- cd 
- ls 
- mkdir 

are bash commands. They allow us to control 
the computer and the jobs on the computers. 
Bash is open source! Free and Open! 

It is on millions of computers worldwide.

--- 
<!-- fg=green bg=black -->
## Good Uses for Bash 

- Rename thousands of pictures from your vacation
- Extract a line from a huge text file 
- Back up your laptop weekly 
- Check the status of a program on a super computer
- Run a parameter search on a program 

---
<!-- fg=green bg=black -->
## Defining some terms 

- Scripting/scripts: used to automate processes that would otherwise need to be executed step-by-step
- sh : abbreviation of shell 
- comment: text in a program that isn't run, gets skipped
- executable: a program you can run 
- permissions: who can run, edit or access a file
- path: location of a file or folder. Ex: `/home/Downloads/homework.pdf`

---
<!-- fg=green bg=black -->
## Review of some commands

*pwd* - Present Working Directory
*cd* - Change directory
*ls* - List files
*nano* - Text editor
*cp* - Copy files (needs 2 arguments)
*mv* - Move files (needs 2 arguments)
*mkdir* - make a new directory
*rm* - remove files

--- 
<!-- fg=green bg=black -->
## Echo

Open up a terminal and use the command: 

`echo "hello world"` 

---
<!-- fg=green bg=black -->
## Your First Script 

Open up a terminal window and use the command 

`nano s1.sh`

`.sh` is the extension we will be using for shell scripts 

--- 
<!-- fg=green bg=black -->
## Changing Permission 

In order to run a executable, you need to give it permission.
The different permissions are *read*, *write*, *execute*. 
(Write is the equivalent of save). 
 
use `ls -l` (list the files with option --long) 

`-rw-rw-r-- 1 user user    34 Feb  4 12:09 s1.sh`

This script does not have *x*, *execute permission*. 

--- 
<!-- fg=green bg=black -->
## Permissions 
Use the command `chmod` to add (or take away permisisons). 

`chmod +x s1.sh`

change the permissions of file s1.sh to add the execute permission. 

Now `ls -l` should show 

`-rwxrwxr-x 1 akh akh   196 Feb  4 12:04 s1.sh*`

*r*ead, *w*rite, *e*xecute

---
<!-- fg=green bg=black -->
## For loops 

Repeats some code

` for i in {START..END..INCREMENT} `
` do `
`    SOME CODE `
` done`

---
<!-- fg=green bg=black -->
# Your second Script 

Write a bash script that 

prints `hello world` 5 times

---
<!-- fg=green bg=black -->
## You can run any Bash command 

You can add command just like you would in the commandline 
in a bash script 

`cd ~/path/to/file` to change directory 
`mkdir new_folder` to make a new directory


To run a bash command and store the output, enclose that command in `$(COMMAND)`.  

`$(pwd)` 

---
<!-- fg=green bg=black -->
## Add a line that prints the directory at the beginning

---
<!-- fg=green bg=black -->
## if loops 

` if [ CONDITION ] ; then ` 
`    SOME CODE ` 
` else ` 
`    SOME CODE` 
` fi ` 

---
<!-- fg=green bg=black -->
## Add an if statement that only prints on even numbers

---
<!-- fg=green bg=black -->
## Piping 

We can pipe the output of one command into another. 

`|` is the pipe symbol 

Try the command `ls -1` then 

` ls -1 | wc `

What does it do? 
You are piping the output of the list of files in the directory 
to `wc`

---
<!-- fg=green bg=black -->
## wc 

Stands for word count 

wc outputs the line count, word count, and byte count 

So
 
` ls -1 | wc -l `
Counts the files in a directory. 

--- 
<!-- fg=green bg=black -->
## Controlling the Output of a command 

` > ` puts the output of a command into a file 

` COMMAND > filename `

Try 

` pwd > path`

--- 
<!-- fg=green bg=black -->
## Inputs for Bash Scripts 

We can use inputs for bash scripts!

``` 
#!/bin/bash 

echo $1

```

---
<!-- fg=green bg=black -->
## Learning new functions 

- awk 
- sed 
- cat 
- cut 
- sort 
- head

--- 
<!-- fg=green bg=black -->
## Learning new functions 

Rather than defining them, to learn what these do we are going 
to *use* the functions in the assignment. 

---
<!-- fg=green bg=black -->
## Before we end 

Bash is CASE sensitive.
Bash is "space" sensitive.

`if [$number=2]` wont run.
`if [ $number = 2 ]` will run

Bash is not sensitive to indents.

--- 
<!-- fg=green bg=black -->
## Explain Shell 

Type in any command and it explains all the options 
and the command to you!

https://explainshell.com/#

---
<!-- fg=green bg=black --> 
## Fun Bash script example 

---
<!-- fg=green bg=black -->
# Resources 

Bash for Science: https://github.com/jperkel/nature_bash

Excellent Bash Tutorial: https://github.com/Idnan/bash-guide

Bash Tutorial Video (long): https://www.youtube.com/watch?v=e7BufAVwDiM

Fun Bash Scripts: https://github.com/alexanderepstein/Bash-Snippets
 

