Introduction
------------

This is just a simple package installer for linux systems using apt-get.

It uses list.txt for obtaining the list of packages to be installed. 'list.txt' should exist within the same folder as the script. Each line should contain only a single package name.


How to use
----------

Use the command "bash pkginstall.sh" (without quotes) for executing the script.

You may have to provide the sudo password once, after that the script will install all the packages without interruptions. 

Make sure to put list.txt in the same place as the script. Also make sure to put only one package name per line in list.

This is obviously meant for newbies to linux/shell scripting.
