#!/bin/bash

sudo apt-get update

f="list.txt"

if [ -e "$f" ]
then
   if [ -r "$f" ]
   then 
     while read line           
     do           
     if echo "$line" | grep -q "#";then
         echo -e  "\nLeaving out comments!"

     elif echo "$line" | grep -q '^$';then
         continue
     else
         echo -e "\nRunning apt-get install $line"
         sudo apt-get install $line -y
     fi          
     done <list.txt 
   else
     echo "File not readable!\nAre you sure list.txt can be accessed by current user privileges?"
   fi
else
echo "File not found! Are you sure you have a list.txt?\nMake sure it is named exactly 'list.txt', all lower cases." 
fi

exit
