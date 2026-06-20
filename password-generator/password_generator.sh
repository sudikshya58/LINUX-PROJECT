#!/bin/bash

echo "Enter password length (12-16):"
read length

#tr -Filter characters
#read -Take user input
password=$(tr -dc 'A-Za-z0-9!@#$%^&*' < /dev/urandom | head -c $length)

echo
#/dev/urandom - Generate random data
echo "Generated Password:"
echo "$password"

