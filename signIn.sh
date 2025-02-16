#!/bin/bash

# SignIn with shell
cho "================================================"
read -p "Enter first Name here :" fname
read -p "Enter second Name here :" sname
read -p "Enter email Address here :" email
read -sp "Enter Password here :" password
echo "SignIn successfully !"
echo "================================================="

 Show Input Details 
echo "Input Details here"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "First Name :$fname"
echo "Second Name :$sname"
echo "Email Address :$email"
echo "Password :$password"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - -"
