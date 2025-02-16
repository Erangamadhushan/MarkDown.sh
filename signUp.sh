#!/bin/bash

# SignUp with shell
echo "Welcome to SignUp Portral"
echo "================================================"
read -p "Enter first Name here :" fname
read -p "Enter second Name here :" sname
read -p "Enter email Address here :" email
read -p "Enter job title here : (Student, Teacher, Admin) " jobtitle
read -sp "Enter Password here :" password
read -sp "Re-enter Password here :" reenterpassword
echo "SignUp successfully !"
echo "================================================="

# Show Input Details 
echo "Input Details here"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "First Name :$fname"
echo "Second Name :$sname"
echo "Email Address :$email"
echo "Job Title :$jobtitle"
echo "Password :$password"
echo "Re-enter Password :$reenterpassword"
echo "- - - - - - - - - - - - - - - - - - - - - - - - - -"
