#!/bin/bash

<<help

this is a shell scripts
to create users

help

echo "======= Creation of User ========="

read -p "enter the username:" username

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username" 

echo "========= Creation of User Completed ========="

sudo userdel $username

echo "====== Deletion of User Completed =========="

cat /etc/passwd | grep $username | wc

echo "as wc is 0 the user is deleted"



