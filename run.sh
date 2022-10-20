#!/bin/bash
#GnuPG, also known as GPG, 

#Elock is a GPG based scripting tool 

#used for encrypting and decrypting the files and folders

#Simple and Eligent

#LOOP To run script until user press CTRL+C
while true;
do

#Printing Information on users terminal
echo "Welcome,to ELock ready to Encrypt/Decrypt a files/folders for you"
echo "currently ELock have a limitation,Please Place ELock to the same folder, where a file to be encrypted/decrypted is present"
echo "Enter the Exact File Name with extension"

#Taking Input
read file;

#Printing Information on users terminal
echo "For Encrypt press 1 for Decrypt press 2"

#Taking Input
read input;

#Printing extra linespace
echo ""

#Logic for Encrypt operation
if [ "$input" -eq 1 ]
then
#Invokeing gpg command for encryption --no-symkey-cache is used to preventing cache
gpg -c --no-symkey-cache $file
echo "File is encrypted sucessfully..."
echo "Now original file will be removed"
rm -rf $file

#Logic for Decrypt operation
elif [ "$input" -eq 2 ]
then 
#Invokeing gpg command for Decryption --no-symkey-cache is used to preventing cache
gpg -o abc.txt --no-symkey-cache -d $file
echo "File is decrypted sucessfully..."
echo "Now original file will be removed"
rm -rf $file

#Preventing invalid input 
else
echo "Please give a valid input"
fi

#Printing extra linespace and Providing information to user to how to stop
echo ""
echo "If you want to quit press CTRL+C"
echo ""

done
#Loop end point
