#!/bin/bash

#Build Script 3

#Oct122022

#Creates users and places them in the GitAcc group.

#Determines if user is root and allows them to run script.

if [ $UID = 0 ]

then

 echo "You are a root user.  You are allowed to run this script."

else

 echo "You need to sign in as the root user."

 exit 1

fi

#Asks for preferred username and creates user then assigns to GitAcc group. 

echo "Enter preferred username: " 

read newuser;

useradd -m -g GitAcc $newuser

echo "Great, your username and the assigned group are below!"

sleep 3

groups $newuser



