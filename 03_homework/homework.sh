#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
for x in {1..5} ; do mkdir -p MYDIR_$x ; done

# 2. How would you verify the creation of all 5 directories?
for x in {1..5} ; do if [ -d "MYDIR_$x" ] ; then echo "MYDIR_$x exists" ; fi ; done

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
for x in {1..5} ; do if [ -d "MYDIR_$x" ] ; then for y in {1..5} ; do touch  MYDIR_$x/FILE_$y.txt; echo "I love data" >> MYDIR_$x/FILE_$y.txt ; done; fi ; done

# 4. How would you verify the presence of all 5 files?
for x in {1..5} ; do if [ -d "MYDIR_$x" ] ; then for y in {1..5} ; do if [ -f  MYDIR_$x/FILE_$y.txt ] ; then echo " MYDIR_$x/FILE_$y.txt exists" ; fi; done; fi; done

# 5. How would you append to one of the existing files " and machine learning!"?
 FILE="MYDIR_1/FILE_1.txt" ; if [ -f $FILE ]; then echo "and machine learning!" >> $FILE  ; fi

# 6. How would you verify that the text was indeed appended to the existing file?
FILE="MYDIR_1/FILE_1.txt" ; if [ -f $FILE ]; then cat $FILE ; fi

# 7. How would you delete all files except for the one with the appended text?
for x in {1..5} ; do if [ -d "MYDIR_$x" ] ; then for y in {1..5} ; do if [[ !  $(cat MYDIR_$x/FILE_$y.txt | grep "and machine learning!") ]]; then rm  MYDIR_$x/FILE_$y.txt ; fi;  done; fi ; done

# 8. How would you navigate back to the parent directory containing all the directories?
cd ../

# 9. How would you remove each directory along with its contents?
for x in {1..5} ; do rm -rf MYDIR_$x/; done

# 10. How would you verify that all directories and files have been deleted?
for x in {1..5} ; do if [ ! -d MYDIR_$x ] ; then echo "MYDIR_$x not exists" ; fi ; done
