#! /bin/bash
# This script creates directories and subdirectories with spaces in thier
#name.
dir="./"
name="nouvs"
name2="fes"
n=0
#i=0
while ((n < 4 ))
do 

	mkdir $dir$name\ fes 

	cd $dir$name\ fes
	touch ./test\ hey.txt
	touch ./test2\ heyt.txt
	((n+=1))
done 

