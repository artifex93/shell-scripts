#!/bin/bash

#update apt-get
sudo apt-get update

f="list.txt"

#check if file exists
if [ -e "$f" ]
then
   if [ -r "$f" ]  #check if the script has permissions to access file
   then 
     while read line          
     do           
     if echo "$line" | grep -q "#";then  #search for comments and omit them
         echo -e  "\nLeaving out comments!"

     elif echo "$line" | grep -q '^$';then #check if it is an empty line
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
